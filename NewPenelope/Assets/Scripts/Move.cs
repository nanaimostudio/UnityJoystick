using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;

public class Move : MonoBehaviour {
	//character variable stores the player
	public CharacterController character;
	//defined all objective-c side method as extern data
	[DllImport ("__Internal")]
	private static extern float RedButtonJoystickX();
	[DllImport ("__Internal")]
	private static extern float RedButtonJoystickY();
	[DllImport ("__Internal")]
	private static extern bool RedButtonIsButtonAPressed();
	[DllImport ("__Internal")]
	private static extern bool RedButtonIsButtonBPressed();
	// Use this for initialization
	void Start () {
		Screen.orientation = ScreenOrientation.LandscapeLeft;
	}
	
	// Update is called once per frame
	void Update () {
	float fA = RedButtonJoystickX();
	float fB = RedButtonJoystickY();
	bool bC = RedButtonIsButtonAPressed();
	//use the Joystick X value to control Unity's X axis
    //use the Joystick Y value to control Unity's Z axis
	character.Move(new Vector3(fA,0,fB));
	if(bC)
	{
		Debug.Log(bC.ToString());	
	}	
	}
}
