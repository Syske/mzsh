.class public Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "VibrationIntensityActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private checkBox_low:Landroid/widget/CheckBox;

.field private checkBox_middle:Landroid/widget/CheckBox;

.field private checkbox_high:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->lambda$setListener$267(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 50
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 52
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getVibrationIntensity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "vibrateString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u521d\u59cb\u5316 vibrateString  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 55
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 57
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    return-void

    .line 62
    :cond_0
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 65
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 67
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0e01fd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    .line 42
    const v0, 0x7f0e01fe

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    .line 43
    const v0, 0x7f0e01ff

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    .line 45
    return-void
.end method

.method private synthetic lambda$setListener$267(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 88
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 89
    return-void
.end method

.method private setToDevice()V
    .locals 4

    .prologue
    .line 93
    const-string v1, ""

    .line 94
    .local v1, "vibrate":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const-string v1, "2"

    .line 101
    :goto_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 102
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->saveVibrate(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 105
    :cond_0
    return-void

    .line 96
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string v1, "4"

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "3"

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

    .line 110
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 118
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->setToDevice()V

    goto :goto_0

    .line 122
    :pswitch_1
    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 128
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->setToDevice()V

    goto :goto_0

    .line 132
    :pswitch_2
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_low:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkBox_middle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->checkbox_high:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 138
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->setToDevice()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01fd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->initView()V

    .line 36
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->initData()V

    .line 37
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->setListener()V

    .line 38
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/VibrationIntensityActivity;->setContentView(I)V

    .line 30
    return-void
.end method
