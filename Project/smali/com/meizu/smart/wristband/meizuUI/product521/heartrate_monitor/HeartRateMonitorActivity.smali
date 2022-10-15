.class public Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HeartRateMonitorActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private checkBox_auto:Landroid/widget/CheckBox;

.field private checkBox_manual:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->lambda$setListener$220(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 51
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getHeartRateMonitingString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "hrMonitorString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u521d\u59cb\u5316 hrMonitorString  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 54
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 56
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 66
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    return-void

    .line 59
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 62
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    .line 42
    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    .line 44
    return-void
.end method

.method private synthetic lambda$setListener$220(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 76
    return-void
.end method

.method private setToDevice()V
    .locals 4

    .prologue
    .line 79
    const-string v0, ""

    .line 80
    .local v0, "hrMonitor":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v0, "1"

    .line 85
    :goto_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    .line 86
    .local v1, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->saveHrMonitor(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 89
    :cond_0
    return-void

    .line 83
    .end local v1    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    if-eqz p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 100
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->setToDevice()V

    goto :goto_0

    .line 104
    :pswitch_1
    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->checkBox_manual:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 108
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->setToDevice()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0e00ba
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->initView()V

    .line 36
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->initData()V

    .line 37
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->setListener()V

    .line 38
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/heartrate_monitor/HeartRateMonitorActivity;->setContentView(I)V

    .line 30
    return-void
.end method
