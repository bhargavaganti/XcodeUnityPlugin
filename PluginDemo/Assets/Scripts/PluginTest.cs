using UnityEngine;
using System.Collections;
using System;
using System.Runtime.InteropServices;

public class PluginTest : MonoBehaviour 
{
	#if UNITY_IPHONE
	[DllImport("__Internal")]
	#else
	[DllImport("libUnity")]
	#endif
	extern static private void ios_log(string message);

	#if UNITY_IPHONE
	[DllImport("__Internal")]
	#else
	[DllImport("libUnity")]
	#endif
	extern static private float get_battery_level();

	#if UNITY_IPHONE
	[DllImport("__Internal")]
	#else
	[DllImport("libUnity")]
	#endif
	extern static private void print_root_controller();

	#if UNITY_IPHONE
	[DllImport("__Internal")]
	#else
	[DllImport("libUnity")]
	#endif
	extern static private void show_native_alert();

	// Use this for initialization
	void Start () 
	{
		ios_log("start");
		StartCoroutine(PrintBatteryLevel());
	}
	
	// Update is called once per frame
	IEnumerator PrintBatteryLevel () 
	{
		uint num = 0;
		while(num++ < 2)
		{
			ios_log(string.Format("battery_level:{0:F2}", get_battery_level()));
			yield return null;
		}

		yield return new WaitForSeconds(2);
		ios_log(string.Format("battery_level:{0:F2}", get_battery_level()));

		yield return new WaitForSeconds(2);
		show_native_alert();

		yield return new WaitForSeconds(2);
		print_root_controller();
	}
}
