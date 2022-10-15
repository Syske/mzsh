.class public Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "LongSitActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private checkColor:I

.field private color_content:I

.field private color_gray:I

.field private color_tips:I

.field private color_title:I

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

.field private rl_start_time:Landroid/widget/RelativeLayout;

.field private rl_target_time:Landroid/widget/RelativeLayout;

.field sitStartHour:Ljava/lang/String;

.field sitStartMinute:Ljava/lang/String;

.field sitStopHour:Ljava/lang/String;

.field sitStopMinute:Ljava/lang/String;

.field private sitTime:[Ljava/lang/String;

.field private sitTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private start_time:Landroid/widget/TextView;

.field private start_time_title:Landroid/widget/TextView;

.field private target_time:Landroid/widget/TextView;

.field private target_time_title:Landroid/widget/TextView;

.field private timeIndex:I

.field private tips:Landroid/widget/TextView;

.field private unCheckColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTime:[Ljava/lang/String;

    .line 158
    const-string v0, "#E6000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    .line 159
    const-string v0, "#4d000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->setToDevice()V

    return-void
.end method

.method static synthetic access$302(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->timeIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->lambda$setListener$221(Ljava/lang/Void;)V

    return-void
.end method

.method private getIndexFromTime(I)I
    .locals 2
    .param p1, "time"    # I

    .prologue
    const/4 v0, 0x1

    .line 304
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const/16 v1, 0x3c

    if-eq p1, v1, :cond_0

    .line 308
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_2

    .line 309
    const/4 v0, 0x2

    goto :goto_0

    .line 310
    :cond_2
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 311
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getTimeFromIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const-string v0, "045"

    .line 326
    :goto_0
    return-object v0

    .line 319
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 320
    const-string v0, "060"

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 322
    const-string v0, "075"

    goto :goto_0

    .line 323
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 324
    const-string v0, "090"

    goto :goto_0

    .line 326
    :cond_3
    const-string v0, "045"

    goto :goto_0
.end method

.method private initData()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const v11, 0x7f020055

    const/4 v4, 0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_title:I

    .line 81
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_content:I

    .line 82
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    .line 83
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_tips:I

    .line 85
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTime:[Ljava/lang/String;

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTimeList:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTime:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 89
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTimeList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTime:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->hourList:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0x17

    if-gt v0, v6, :cond_1

    .line 94
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->hourList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->minuteList:Ljava/util/ArrayList;

    .line 98
    const/4 v0, 0x0

    :goto_2
    const/16 v6, 0x3b

    if-gt v0, v6, :cond_2

    .line 99
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->minuteList:Ljava/util/ArrayList;

    const-string v7, "%02d"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_2
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time_title:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time_title:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time_title:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->tips:Landroid/widget/TextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_gray:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v5, v11, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 112
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v5, v11, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 113
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v5, v11, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 114
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_target_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 115
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 116
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 119
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLongSitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "sitString":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "sitStringItem":[Ljava/lang/String;
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getIndexFromTime(I)I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->timeIndex:I

    .line 123
    aget-object v6, v3, v4

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartHour:Ljava/lang/String;

    .line 124
    aget-object v6, v3, v4

    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartMinute:Ljava/lang/String;

    .line 125
    aget-object v6, v3, v10

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopHour:Ljava/lang/String;

    .line 126
    aget-object v6, v3, v10

    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopMinute:Ljava/lang/String;

    .line 128
    const-string v6, "1"

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 129
    .local v1, "opened":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTime:[Ljava/lang/String;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->timeIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartHour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartMinute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopHour:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopMinute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 134
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    return-void

    .end local v1    # "opened":Ljava/lang/Boolean;
    :cond_3
    move v4, v5

    .line 128
    goto :goto_3
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkBox:Landroid/widget/CheckBox;

    .line 64
    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time_title:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0e00c9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0e00a4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time_title:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time_title:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0e00ca

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->tips:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0e00c7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_target_time:Landroid/widget/RelativeLayout;

    .line 72
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    .line 73
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_target_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method private synthetic lambda$setListener$221(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 138
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 141
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 142
    return-void
.end method

.method private setToDevice()V
    .locals 4

    .prologue
    .line 146
    const-string v0, ""

    .line 147
    .local v0, "longsit":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->timeIndex:I

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getTimeFromIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    .line 153
    .local v1, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/servers/BleServer;->saveLongSit(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 156
    :cond_0
    return-void

    .line 150
    .end local v1    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->timeIndex:I

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->getTimeFromIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showTimeDialog(Z)V
    .locals 14
    .param p1, "setStartTime"    # Z

    .prologue
    .line 211
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 214
    .local v5, "ad":Landroid/app/Dialog;
    const/4 v11, 0x0

    .line 216
    .local v11, "layout":Landroid/view/View;
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 218
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 219
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040058

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 220
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 223
    const v0, 0x7f0e0226

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 224
    .local v12, "title_long_sit":Landroid/widget/TextView;
    const v0, 0x7f0e0103

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 225
    .local v2, "sit_hours":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    const v0, 0x7f0e0229

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 227
    .local v3, "sit_mins":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    const v0, 0x7f0e0228

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 229
    .local v13, "tvTip":Landroid/widget/TextView;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setVisibility(I)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->hourList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabels(Ljava/util/List;)V

    .line 234
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setWheelSize(I)V
    :try_end_0
    .catch Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->minuteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabels(Ljava/util/List;)V

    .line 241
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setWheelSize(I)V
    :try_end_1
    .catch Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCycleEnable(Z)V

    .line 247
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAlphaGradual(F)V

    .line 248
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDivider(II)V

    .line 249
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSolid(II)V

    .line 250
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelColor(I)V

    .line 251
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelSelectColor(I)V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCycleEnable(Z)V

    .line 254
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAlphaGradual(F)V

    .line 255
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDivider(II)V

    .line 256
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSolid(II)V

    .line 257
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelColor(I)V

    .line 258
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setLabelSelectColor(I)V

    .line 260
    if-eqz p1, :cond_1

    .line 261
    const v0, 0x7f080092

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartHour:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 264
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStartMinute:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 272
    :goto_2
    const v0, 0x7f0e021d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 273
    .local v8, "dialog_sure":Landroid/widget/RelativeLayout;
    const v0, 0x7f0e021c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 274
    .local v7, "dialog_cancle":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$1;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;ZLandroid/app/Dialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$2;

    invoke-direct {v0, p0, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .end local v2    # "sit_hours":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .end local v3    # "sit_mins":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .end local v7    # "dialog_cancle":Landroid/widget/RelativeLayout;
    .end local v8    # "dialog_sure":Landroid/widget/RelativeLayout;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "title_long_sit":Landroid/widget/TextView;
    .end local v13    # "tvTip":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 235
    .restart local v2    # "sit_hours":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .restart local v3    # "sit_mins":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "title_long_sit":Landroid/widget/TextView;
    .restart local v13    # "tvTip":Landroid/widget/TextView;
    :catch_0
    move-exception v9

    .line 236
    .local v9, "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->printStackTrace()V

    goto/16 :goto_0

    .line 242
    .end local v9    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    :catch_1
    move-exception v9

    .line 243
    .restart local v9    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->printStackTrace()V

    goto/16 :goto_1

    .line 266
    .end local v9    # "e":Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
    :cond_1
    const v0, 0x7f08008d

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopHour:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 269
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitStopMinute:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    goto :goto_2
.end method

.method private showTimeDialogSit()V
    .locals 10

    .prologue
    .line 330
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 333
    .local v0, "ad":Landroid/app/Dialog;
    const/4 v5, 0x0

    .line 334
    .local v5, "layout":Landroid/view/View;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 336
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 337
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040059

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 338
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 339
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 341
    const v8, 0x7f0e0226

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 342
    .local v7, "title_long_sit":Landroid/widget/TextView;
    const v8, 0x7f08009f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 343
    const v8, 0x7f0e0103

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 345
    .local v6, "time":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 346
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->sitTimeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 347
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->timeIndex:I

    invoke-virtual {v6, v8}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 351
    const v8, 0x7f0e021d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 352
    .local v3, "dialog_sure":Landroid/widget/RelativeLayout;
    const v8, 0x7f0e021c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 353
    .local v2, "dialog_cancle":Landroid/widget/RelativeLayout;
    new-instance v8, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;

    invoke-direct {v8, p0, v0, v6}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Landroid/app/Dialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v8, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$4;

    invoke-direct {v8, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .end local v2    # "dialog_cancle":Landroid/widget/RelativeLayout;
    .end local v3    # "dialog_sure":Landroid/widget/RelativeLayout;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "time":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    .end local v7    # "title_long_sit":Landroid/widget/TextView;
    :cond_0
    return-void
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

    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->checkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->tips:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 173
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 174
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_target_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 176
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->setToDevice()V

    .line 193
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time_title:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->unCheckColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->tips:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->color_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->target_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 186
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->start_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 187
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->end_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v5, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 188
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_target_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 189
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_start_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 190
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->rl_end_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 199
    :sswitch_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->showTimeDialogSit()V

    goto :goto_0

    .line 202
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->showTimeDialog(Z)V

    goto :goto_0

    .line 205
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->showTimeDialog(Z)V

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x7f0e00a3 -> :sswitch_1
        0x7f0e00a6 -> :sswitch_2
        0x7f0e00c7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->initData()V

    .line 58
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->setListener()V

    .line 59
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->setContentView(I)V

    .line 51
    return-void
.end method
