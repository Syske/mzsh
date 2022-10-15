.class public Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HandUpActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checkBox_switch:Landroid/widget/CheckBox;

.field private checkColor:I

.field private color_gray:I

.field private end_time:Landroid/widget/TextView;

.field private end_time_title:Landroid/widget/TextView;

.field private hourList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iLevel:I

.field private iv_left:Landroid/widget/ImageView;

.field private iv_right:Landroid/widget/ImageView;

.field private level:Landroid/widget/TextView;

.field private level_title:Landroid/widget/TextView;

.field private ll_text:Landroid/widget/LinearLayout;

.field private minuteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rl_end_time:Landroid/widget/RelativeLayout;

.field private rl_handup_level:Landroid/widget/RelativeLayout;

.field private rl_start_time:Landroid/widget/RelativeLayout;

.field private sitStartHour:Ljava/lang/String;

.field private sitStartMinute:Ljava/lang/String;

.field private sitStopHour:Ljava/lang/String;

.field private sitStopMinute:Ljava/lang/String;

.field private start_time:Landroid/widget/TextView;

.field private start_time_title:Landroid/widget/TextView;

.field private unCheckColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    .line 209
    const-string v0, "#E6000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    .line 210
    const-string v0, "#4d000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->setToDevice()V

    return-void
.end method

.method static synthetic access$702(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->updateLevel()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->lambda$setListener$219(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 14

    .prologue
    const v13, 0x7f020055

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0098

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->hourList:Ljava/util/ArrayList;

    .line 102
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x17

    if-gt v2, v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->hourList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->minuteList:Ljava/util/ArrayList;

    .line 107
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x3b

    if-gt v2, v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->minuteList:Ljava/util/ArrayList;

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time_title:Landroid/widget/TextView;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time_title:Landroid/widget/TextView;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level_title:Landroid/widget/TextView;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->color_gray:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v9, v13, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 121
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v9, v13, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 122
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v9, v13, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 123
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 124
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 125
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_handup_level:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 128
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getHandupString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "handsUpString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521d\u59cb\u5316 handsUpString  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 131
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "handupStringItem":[Ljava/lang/String;
    aget-object v5, v1, v10

    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    .line 133
    aget-object v5, v1, v10

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    .line 134
    aget-object v5, v1, v11

    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    .line 135
    aget-object v5, v1, v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    .line 137
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 139
    .local v3, "opened":Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 140
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "iLevel"

    invoke-interface {v4, v5, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    .line 143
    const-string v5, "0"

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 155
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->updateLevel()V

    .line 157
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkBox_switch:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkBox_switch:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 162
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkBox_switch:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    return-void

    .line 145
    :cond_3
    const-string v5, "1"

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    iput v10, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    .line 147
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 148
    :cond_4
    const-string v5, "4"

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 149
    iput v12, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    .line 150
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 151
    :cond_5
    const-string v5, "7"

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    const/4 v5, 0x7

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    .line 153
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_2
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkBox_switch:Landroid/widget/CheckBox;

    .line 81
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    .line 82
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    .line 83
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_handup_level:Landroid/widget/RelativeLayout;

    .line 85
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0e00a4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time_title:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time_title:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level_title:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_handup_level:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private synthetic lambda$setListener$219(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 189
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 192
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 193
    return-void
.end method

.method private setToDevice()V
    .locals 4

    .prologue
    .line 196
    const-string v0, ""

    .line 197
    .local v0, "handup":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkBox_switch:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    .line 203
    .local v1, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->saveHandup(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 207
    :cond_0
    return-void

    .line 200
    .end local v1    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showLevelDlg()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 358
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 359
    .local v4, "inflaterDl":Landroid/view/LayoutInflater;
    const v6, 0x7f0400b4

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 363
    .local v5, "layout":Landroid/widget/RelativeLayout;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 364
    .local v3, "dlgLevel":Landroid/app/AlertDialog;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 366
    const v6, 0x7f0e01fd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 367
    .local v1, "cbLow":Landroid/widget/CheckBox;
    const v6, 0x7f0e01fe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 368
    .local v2, "cbMiddle":Landroid/widget/CheckBox;
    const v6, 0x7f0e01ff

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 370
    .local v0, "cbHigh":Landroid/widget/CheckBox;
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    sparse-switch v6, :sswitch_data_0

    .line 381
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 385
    :goto_0
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 386
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 389
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$3;

    invoke-direct {v6, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 399
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$4;

    invoke-direct {v6, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 409
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;

    invoke-direct {v6, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 419
    return-void

    .line 372
    :sswitch_0
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 375
    :sswitch_1
    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 378
    :sswitch_2
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method private showTimeDialog(Z)V
    .locals 14
    .param p1, "setStartTime"    # Z

    .prologue
    .line 261
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 264
    .local v5, "ad":Landroid/app/Dialog;
    const/4 v11, 0x0

    .line 266
    .local v11, "layout":Landroid/view/View;
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 268
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 269
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040058

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 270
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 273
    const v0, 0x7f0e0226

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 274
    .local v12, "title_long_sit":Landroid/widget/TextView;
    const v0, 0x7f0e0103

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 275
    .local v2, "sit_hours":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    const v0, 0x7f0e0229

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 277
    .local v3, "sit_mins":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    const v0, 0x7f0e0228

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 279
    .local v13, "tvTip":Landroid/widget/TextView;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setVisibility(I)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->hourList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabels(Ljava/util/List;)V

    .line 285
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setWheelSize(I)V
    :try_end_0
    .catch Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->minuteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabels(Ljava/util/List;)V

    .line 292
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setWheelSize(I)V
    :try_end_1
    .catch Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCycleEnable(Z)V

    .line 299
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAlphaGradual(F)V

    .line 300
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDivider(II)V

    .line 301
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSolid(II)V

    .line 302
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelColor(I)V

    .line 303
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelSelectColor(I)V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCycleEnable(Z)V

    .line 306
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAlphaGradual(F)V

    .line 307
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDivider(II)V

    .line 308
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSolid(II)V

    .line 309
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelColor(I)V

    .line 310
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelSelectColor(I)V

    .line 313
    if-eqz p1, :cond_1

    .line 314
    const v0, 0x7f080092

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartHour:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 317
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStartMinute:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 325
    :goto_2
    const v0, 0x7f0e021d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 326
    .local v8, "dialog_sure":Landroid/widget/RelativeLayout;
    const v0, 0x7f0e021c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 327
    .local v7, "dialog_cancle":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;ZLandroid/app/Dialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$2;

    invoke-direct {v0, p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .end local v2    # "sit_hours":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .end local v3    # "sit_mins":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .end local v7    # "dialog_cancle":Landroid/widget/RelativeLayout;
    .end local v8    # "dialog_sure":Landroid/widget/RelativeLayout;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "title_long_sit":Landroid/widget/TextView;
    .end local v13    # "tvTip":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 286
    .restart local v2    # "sit_hours":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .restart local v3    # "sit_mins":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "title_long_sit":Landroid/widget/TextView;
    .restart local v13    # "tvTip":Landroid/widget/TextView;
    :catch_0
    move-exception v9

    .line 287
    .local v9, "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->printStackTrace()V

    goto/16 :goto_0

    .line 293
    .end local v9    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    :catch_1
    move-exception v9

    .line 294
    .restart local v9    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->printStackTrace()V

    goto/16 :goto_1

    .line 319
    .end local v9    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    :cond_1
    const v0, 0x7f08008d

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopHour:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 322
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->sitStopMinute:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    goto :goto_2
.end method

.method private updateLevel()V
    .locals 5

    .prologue
    const v4, 0x7f08019d

    .line 169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "iLevel"

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->iLevel:I

    sparse-switch v1, :sswitch_data_0

    .line 183
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :goto_0
    return-void

    .line 174
    :sswitch_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 177
    :sswitch_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 180
    :sswitch_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    const v2, 0x7f0801db

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v5, 0x7f02011a

    const v4, 0x7f020055

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 223
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 224
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 225
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 226
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 227
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_handup_level:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->setToDevice()V

    .line 243
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->start_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 236
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->end_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 237
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->level:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 238
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 239
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 240
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->rl_handup_level:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 249
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->showTimeDialog(Z)V

    goto :goto_0

    .line 252
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->showTimeDialog(Z)V

    goto :goto_0

    .line 255
    :sswitch_2
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->showLevelDlg()V

    goto :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x7f0e00a0 -> :sswitch_2
        0x7f0e00a3 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->initData()V

    .line 74
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->setListener()V

    .line 75
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->setContentView(I)V

    .line 67
    return-void
.end method
