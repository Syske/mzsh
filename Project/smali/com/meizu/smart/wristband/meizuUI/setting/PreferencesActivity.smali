.class public Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "PreferencesActivity.java"


# static fields
.field public static final ACTION_UNIT:Ljava/lang/String; = "ACTION_UNIT"


# instance fields
.field private begin_length_unit:Ljava/lang/String;

.field private begin_weight_unit:Ljava/lang/String;

.field private checkbox_Metric_length:Landroid/widget/CheckBox;

.field private checkbox_Metric_weight:Landroid/widget/CheckBox;

.field private checkbox_inch_length:Landroid/widget/CheckBox;

.field private checkbox_inch_weight:Landroid/widget/CheckBox;

.field private needChange:Z

.field private timeTw:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_length:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_length:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_weight:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_weight:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->lambda$setListener$278(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getUnit(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->needChange:Z

    .line 55
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_length:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_length:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    const-string v0, "0"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_length_unit:Ljava/lang/String;

    .line 64
    :goto_0
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_weight_Metric:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_weight:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_weight:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    const-string v0, "0"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_weight_unit:Ljava/lang/String;

    .line 84
    :goto_1
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_length:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_length:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 62
    const-string v0, "1"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_length_unit:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_weight:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_weight:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    const-string v0, "1"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_weight_unit:Ljava/lang/String;

    goto :goto_1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_length:Landroid/widget/CheckBox;

    .line 45
    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_length:Landroid/widget/CheckBox;

    .line 46
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_weight:Landroid/widget/CheckBox;

    .line 47
    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_weight:Landroid/widget/CheckBox;

    .line 50
    return-void
.end method

.method private synthetic lambda$setListener$278(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->save()V

    .line 112
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 170
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_length:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_length_unit:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 173
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->needChange:Z

    .line 181
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_weight:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_weight_unit:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 184
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->needChange:Z

    .line 192
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->needChange:Z

    if-eqz v1, :cond_2

    .line 193
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getUnit(Landroid/content/Context;)V

    .line 194
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->uploadSettings(Landroid/content/Context;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_UNIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->finish()V

    .line 204
    return-void

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_length_unit:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_length:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v2, "1"

    invoke-static {p0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 178
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->needChange:Z

    goto :goto_0

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->begin_weight_unit:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->unit_weight:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    const-string v2, "1"

    invoke-static {p0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 189
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->needChange:Z

    goto :goto_1
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 114
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_length:Landroid/widget/CheckBox;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_length:Landroid/widget/CheckBox;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_Metric_weight:Landroid/widget/CheckBox;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->checkbox_inch_weight:Landroid/widget/CheckBox;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    return-void
.end method


# virtual methods
.method public getTimeRule()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->timeTw:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->initView()V

    .line 39
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->initData()V

    .line 40
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->setListener()V

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->save()V

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/PreferencesActivity;->setContentView(I)V

    .line 33
    return-void
.end method
