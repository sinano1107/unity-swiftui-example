using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class API : MonoBehaviour
{
    TextMeshProUGUI message;

    void Start()
    {
        message = GameObject.Find("MessageText").GetComponent<TextMeshProUGUI>();
    }

    public void ReceiveMessage(string message)
    {
        UpdateText(message);
    }

    void UpdateText(string newText)
    {
        message.text = newText;
    }
}
