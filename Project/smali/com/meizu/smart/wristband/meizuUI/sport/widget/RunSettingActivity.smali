.class public Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "RunSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private HEART_RATE_RANGE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final HeartRate_Box_Key:Ljava/lang/String;

.field private final Max_HeartRate_Key:Ljava/lang/String;

.field private final SHAREPRE_TAG:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private maxHeartRate:I

.field private max_heart_rate:Landroid/widget/TextView;

.field private timelyBoxCheck:Z

.field private timely_heart_rate_cb:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 34
    const-string v0, "RunSettings"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->SHAREPRE_TAG:Ljava/lang/String;

    .line 35
    const-string v0, "RunSettings_Timely_HeartRate_Box"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->HeartRate_Box_Key:Ljava/lang/String;

    .line 36
    const-string v0, "RunSettings_Max_HeartRate"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->Max_HeartRate_Key:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timelyBoxCheck:Z

    .line 99
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->HEART_RATE_RANGE:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timelyBoxCheck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->max_heart_rate:Landroid/widget/TextView;

    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0e035b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timely_heart_rate_cb:Landroid/widget/CheckBox;

    .line 66
    const v0, 0x7f0e035e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->max_heart_rate:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->setListener()V

    .line 68
    return-void
.end method

.method private initdata()V
    .locals 4

    .prologue
    .line 52
    const/16 v0, 0x64

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf0

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->HEART_RATE_RANGE:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const-string v1, "RunSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 57
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "RunSettings_Timely_HeartRate_Box"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timelyBoxCheck:Z

    .line 58
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "RunSettings_Max_HeartRate"

    const/16 v3, 0x96

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    .line 60
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timely_heart_rate_cb:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timelyBoxCheck:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->max_heart_rate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "RunSettings_Timely_HeartRate_Box"

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timelyBoxCheck:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "RunSettings_Max_HeartRate"

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 85
    .local v0, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timelyBoxCheck:Z

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/BleServer;->setRunSetting(ZI)Lrx/Observable;

    move-result-object v1

    .line 87
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 88
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :cond_2
    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f0e035a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e035c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->timely_heart_rate_cb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    return-void
.end method

.method private setMaxHeartRate()V
    .locals 9

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "layout":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 134
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 135
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400d6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x439b0000    # 310.0f

    invoke-static {p0, v7}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x43c80000    # 400.0f

    invoke-static {p0, v8}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 140
    const v6, 0x7f0e0361

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 141
    .local v5, "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 142
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->HEART_RATE_RANGE:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 143
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->maxHeartRate:I

    add-int/lit8 v6, v6, -0x64

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 144
    const v6, 0x7f0e004a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 145
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f0800d3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v6, 0x7f0e0208

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 147
    .local v3, "ok":Landroid/widget/Button;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;

    invoke-direct {v6, p0, v5, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "ok":Landroid/widget/Button;
    .end local v4    # "title":Landroid/widget/TextView;
    .end local v5    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 117
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->finish()V

    goto :goto_0

    .line 120
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->setMaxHeartRate()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x7f0e035a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0400ce

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->initView()V

    .line 44
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->initdata()V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->save()V

    .line 75
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 76
    return-void
.end method
