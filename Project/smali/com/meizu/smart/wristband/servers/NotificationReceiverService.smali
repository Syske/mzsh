.class public Lcom/meizu/smart/wristband/servers/NotificationReceiverService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationReceiverService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNotificationPosted(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 62
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPosted pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 63
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSmartString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSmartString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "split":[Ljava/lang/String;
    const-string v2, "1"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "3"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 87
    .end local v1    # "split":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v1    # "split":[Ljava/lang/String;
    :cond_1
    const-string v2, "1"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.mobileqqi"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    :cond_2
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "2"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "1"

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.android.email"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "8"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 72
    :cond_4
    const-string v2, "1"

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.facebook.katana"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "4"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 74
    :cond_5
    const-string v2, "1"

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.twitter.android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 75
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "5"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 76
    :cond_6
    const-string v2, "1"

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com.whatsapp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "6"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 78
    :cond_7
    const-string v2, "1"

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.instagram.android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 79
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "7"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 80
    :cond_8
    const-string v2, "1"

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "line"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 81
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "9"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 82
    :cond_9
    const-string v2, "1"

    const/16 v3, 0x8

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "skype"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "0"

    const-string v5, "10"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/meizu/smart/wristband/servers/BleServer;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 27
    const-string v6, "onNotificationPosted"

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 31
    .local v2, "notification":Landroid/app/Notification;
    iget-object v1, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 32
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "android.title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "notificationTitle":Ljava/lang/String;
    const-string v6, "android.text"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 34
    .local v4, "notificationText":Ljava/lang/CharSequence;
    const-string v6, "android.subText"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 36
    .local v3, "notificationSubText":Ljava/lang/CharSequence;
    const/4 v0, 0x1

    .line 38
    .local v0, "bSendMSg":Z
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 43
    :cond_0
    if-eqz v4, :cond_1

    const-string/jumbo v6, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    const/4 v0, 0x0

    .line 49
    :cond_1
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p0, v6, v2}, Lcom/meizu/smart/wristband/servers/NotificationReceiverService;->handleNotificationPosted(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notificationTitle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notificationText:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 92
    return-void
.end method
