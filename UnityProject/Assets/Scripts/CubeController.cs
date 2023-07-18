using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeController : MonoBehaviour
{
    void Update()
    {
        if (Input.touchCount != 0) return;
        transform.Rotate(0, Time.deltaTime * 100, 0);
    }
}
