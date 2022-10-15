.class public Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;
.super Landroid/app/Activity;
.source "DownLoadActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private act:Landroid/content/Context;

.field isEndTime:Z

.field radio_bt_all:Landroid/widget/RadioButton;

.field radio_bt_custom:Landroid/widget/RadioButton;

.field timeErrow:Z

.field tv_end_time:Landroid/widget/Button;

.field tv_start_time:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->timeErrow:Z

    .line 35
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->isEndTime:Z

    .line 55
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    .line 56
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_all:Landroid/widget/RadioButton;

    .line 58
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_custom:Landroid/widget/RadioButton;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->act:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->goDownLoadData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->getDigetFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/widget/TextView;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->showTimeDialog(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->lambda$setListener$1(Ljava/lang/Void;)V

    return-void
.end method

.method private getDigetFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    .line 225
    const-string v3, "[^0-9]"

    .line 226
    .local v3, "regEx":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 227
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 228
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "string2":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "year":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "month":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private goDownLoadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    .line 217
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 222
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 45
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->act:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private synthetic lambda$setListener$1(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->showDownloadDialog()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0e0095

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 52
    return-void
.end method

.method private showDownloadDialog()V
    .locals 14

    .prologue
    .line 62
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v10, 0x0

    .line 65
    .local v10, "layout":Landroid/view/View;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 69
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f040057

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 72
    const v11, 0x7f0e0225

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    .local v1, "btn_update":Landroid/widget/Button;
    const v11, 0x7f0e0224

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 74
    .local v2, "btn_wait":Landroid/widget/Button;
    const v11, 0x7f0e0222

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    .line 75
    const v11, 0x7f0e0223

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    .line 76
    const v11, 0x7f0e0220

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_all:Landroid/widget/RadioButton;

    .line 77
    const v11, 0x7f0e0221

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    iput-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_custom:Landroid/widget/RadioButton;

    .line 78
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_all:Landroid/widget/RadioButton;

    invoke-virtual {v11, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->radio_bt_custom:Landroid/widget/RadioButton;

    invoke-virtual {v11, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 82
    .local v4, "calendar":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 83
    .local v7, "currentYear":I
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 84
    .local v6, "currentMonth":I
    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 86
    .local v8, "dayNum":I
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;

    invoke-direct {v5, p0, v8, v0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;ILandroid/app/AlertDialog;)V

    .line 140
    .local v5, "clicklistener":Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    invoke-virtual {v11, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    invoke-virtual {v11, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v1    # "btn_update":Landroid/widget/Button;
    .end local v2    # "btn_wait":Landroid/widget/Button;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v5    # "clicklistener":Landroid/view/View$OnClickListener;
    .end local v6    # "currentMonth":I
    .end local v7    # "currentYear":I
    .end local v8    # "dayNum":I
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method private showTimeDialog(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 151
    :try_start_0
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    const/16 v18, 0x0

    .line 154
    .local v18, "layout":Landroid/view/View;
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 155
    .local v11, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 157
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    .line 158
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040055

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 159
    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 160
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->isEndTime:Z

    if-eqz v2, :cond_0

    .line 161
    const v2, 0x7f0e0217

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 162
    .local v23, "title_long_sit":Landroid/widget/TextView;
    const v2, 0x7f08008d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    .end local v23    # "title_long_sit":Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 165
    .local v13, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 166
    .local v4, "currentYear":I
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 168
    .local v14, "currentMonth":I
    const v2, 0x7f0e0219

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/desay/wheel/widget/WheelView;

    .line 169
    .local v24, "year":Lcom/desay/wheel/widget/WheelView;
    const v2, 0x7f0e021a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/desay/wheel/widget/WheelView;

    .line 170
    .local v19, "month":Lcom/desay/wheel/widget/WheelView;
    new-instance v1, Lcom/desay/wheel/widget/adapters/NumericWheelAdapter;

    add-int/lit8 v3, v4, -0x2

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/desay/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/desay/wheel/widget/WheelView;->setViewAdapter(Lcom/desay/wheel/widget/adapters/WheelViewAdapter;)V

    .line 172
    new-instance v5, Lcom/desay/wheel/widget/adapters/NumericWheelAdapter;

    const/4 v7, 0x1

    const/16 v8, 0xc

    const-string v9, "%02d"

    const-string v10, ""

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/desay/wheel/widget/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/desay/wheel/widget/WheelView;->setViewAdapter(Lcom/desay/wheel/widget/adapters/WheelViewAdapter;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->getDigetFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 177
    .local v22, "time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 178
    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 179
    .local v21, "textViewYear":I
    const/4 v2, 0x4

    const/4 v3, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 180
    .local v20, "textViewMonth":I
    sub-int v2, v4, v21

    rsub-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/desay/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textViewYear=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentYear=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "year.setCurrentItem=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v4, v21

    rsub-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/desay/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "month.setCurrentItem=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v20, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 187
    const v2, 0x7f0e021d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 188
    .local v16, "dialog_sure":Landroid/widget/Button;
    const v2, 0x7f0e021c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 190
    .local v15, "dialog_cancle":Landroid/widget/Button;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v5, v24

    move-object/from16 v6, v19

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;Landroid/app/AlertDialog;ILcom/desay/wheel/widget/WheelView;Lcom/desay/wheel/widget/WheelView;Landroid/widget/TextView;)V

    .line 206
    .local v1, "clicklistener2":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v15, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "clicklistener2":Landroid/view/View$OnClickListener;
    .end local v4    # "currentYear":I
    .end local v11    # "ad":Landroid/app/AlertDialog;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "calendar":Ljava/util/Calendar;
    .end local v14    # "currentMonth":I
    .end local v15    # "dialog_cancle":Landroid/widget/Button;
    .end local v16    # "dialog_sure":Landroid/widget/Button;
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .end local v18    # "layout":Landroid/view/View;
    .end local v19    # "month":Lcom/desay/wheel/widget/WheelView;
    .end local v20    # "textViewMonth":I
    .end local v21    # "textViewYear":I
    .end local v22    # "time":Ljava/lang/String;
    .end local v24    # "year":Lcom/desay/wheel/widget/WheelView;
    :cond_1
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v2

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

    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_start_time:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->tv_end_time:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x7f0e0220
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->initView()V

    .line 41
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/download/DownLoadActivity;->setListener()V

    .line 42
    return-void
.end method
