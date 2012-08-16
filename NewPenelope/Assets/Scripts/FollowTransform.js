//////////////////////////////////////////////////////////////
// FollowTransform.js
// Penelope iPhone Tutorial
//
// FollowTransform will follow any assigned Transform and 
// optionally face the forward vector to match for the Transform
// where this script is attached.
//////////////////////////////////////////////////////////////

var targetTransform : Transform;		// Transform to follow
var faceForward : boolean = false;		// Match forward vector?
private var thisTransform : Transform;

function Start()
{
	// Cache component lookup at startup instead of doing this every frame
	thisTransform = transform;
}

function Update () 
{
	thisTransform.position.x = targetTransform.position.x;
	thisTransform.position.y = targetTransform.position.y+2;
	thisTransform.position.z = targetTransform.position.z-3.5;
	
	if ( faceForward )
		thisTransform.forward = targetTransform.forward;
}