.class Lcom/android/server/wifi/WifiServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xe

    const/4 v7, 0x0

    .line 1389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1391
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26002

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    const-string/jumbo v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1393
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x2600c

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1394
    :cond_2
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1395
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26003

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1396
    :cond_3
    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1397
    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1398
    .local v2, "pluggedType":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v8, 0x26004

    invoke-virtual {v6, v8, v2, v7, v11}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1399
    .end local v2    # "pluggedType":I
    :cond_4
    const-string/jumbo v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1400
    const-string/jumbo v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1402
    .local v3, "state":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 1403
    .end local v3    # "state":I
    :cond_5
    const-string/jumbo v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1404
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1120025

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1405
    const-string/jumbo v6, "phoneinECMState"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1406
    .local v1, "emergencyMode":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    :goto_1
    const v9, 0x26001

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    .line 1408
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string/jumbo v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1409
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_0

    .line 1410
    :cond_8
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1411
    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1413
    .local v4, "wifiApState":I
    const-string/jumbo v6, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifiApState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    if-ne v4, v10, :cond_0

    .line 1424
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6, v11, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 1426
    .end local v4    # "wifiApState":I
    :cond_9
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1427
    const-string/jumbo v6, "wifi_state"

    .line 1428
    const/4 v8, 0x4

    .line 1427
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1438
    .local v5, "wifiState":I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 1439
    const-string/jumbo v6, "WifiService"

    const-string/jumbo v8, "Wi-Fi state is failed"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto/16 :goto_0
.end method
