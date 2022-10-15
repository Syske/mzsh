.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "InfoActivity.java"


# static fields
.field public static final ACTION_AIM:Ljava/lang/String; = "ACTION_AIM"

.field public static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final REQUESTCODE_CITY:I = 0x1

.field public static final REQUESTCODE_NONE:I = 0x0

.field public static final REQUEST_CODE_CAPTURE_CAMEIA:I = 0x3

.field public static final REQUEST_CODE_PICK_IMAGE:I = 0x4

.field public static final RESIZE_REQUEST_CODE:I = 0x5


# instance fields
.field private AIM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Day:[Ljava/lang/String;

.field private HEIGHT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MONTH:[Ljava/lang/String;

.field private SEX:[Ljava/lang/String;

.field private final TYPE_FAMAILY_NAME:I

.field private final TYPE_NAME:I

.field private WEIGHT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private YEAR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private account_name:Landroid/widget/TextView;

.field private ad:Landroid/app/Dialog;

.field private btn_cancle:Landroid/widget/Button;

.field private btn_sure:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private edt_nickname:Landroid/widget/EditText;

.field private imageUri:Landroid/net/Uri;

.field private m:Ljava/lang/String;

.field private mImageButton_photo:Landroid/widget/ImageView;

.field private mTextView_Aim:Landroid/widget/TextView;

.field private mTextView_Birthday:Landroid/widget/TextView;

.field private mTextView_FamailyName:Landroid/widget/TextView;

.field private mTextView_Height:Landroid/widget/TextView;

.field private mTextView_Name:Landroid/widget/TextView;

.field private mTextView_Sex:Landroid/widget/TextView;

.field private mTextView_Weight:Landroid/widget/TextView;

.field private needToSave:Z

.field private sportAim:Ljava/lang/String;

.field private title_alarm:Landroid/widget/TextView;

.field private user:Lcom/meizu/smart/wristband/models/database/entity/User;

.field private userHeight:I

.field private userImageUri:Landroid/net/Uri;

.field private userWeight:I

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 108
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userHeight:I

    .line 109
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userWeight:I

    .line 250
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->TYPE_NAME:I

    .line 251
    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->TYPE_FAMAILY_NAME:I

    .line 541
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->MONTH:[Ljava/lang/String;

    .line 542
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const-string v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "31"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->Day:[Ljava/lang/String;

    .line 711
    const-string v0, "10000"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->sportAim:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getSex()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getBirthday()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Weight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userWeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Aim:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->sportAim:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->setHeadPhoto(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getHeight()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getWeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showHeadImageChooseDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->exit()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->needToSave:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Sex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$355(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$356(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$10(Landroid/app/Dialog;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$showInputDialog$365(Landroid/app/Dialog;Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILjava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$showInputDialog$366(ILjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$showInputDialog$367(ILandroid/app/Dialog;Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$357(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$358(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$359(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$360(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$setListener$361(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$save$362(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$save$363(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->lambda$save$364(Ljava/lang/Boolean;)V

    return-void
.end method

.method private checkInput()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Sex:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    .line 333
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Aim:Landroid/widget/TextView;

    .line 334
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 337
    :cond_0
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private exit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    .line 472
    .local v1, "loginInfoServer":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->setIsFirstLogin(Z)V

    .line 475
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 476
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/servers/BleServer;->disConnect()V

    .line 477
    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServer;->releaseInstance()V

    .line 480
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/StartActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "bShowSplash"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 483
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void
.end method

.method private getAim()V
    .locals 10

    .prologue
    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, "layout":Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 719
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 720
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 721
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 722
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 723
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400d6

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 725
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 726
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x439b0000    # 310.0f

    invoke-static {p0, v8}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x43c80000    # 400.0f

    invoke-static {p0, v9}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 728
    const v7, 0x7f0e0361

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 729
    .local v6, "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 730
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->AIM:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 731
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 732
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->AIM:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 733
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->sportAim:Ljava/lang/String;

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->AIM:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 734
    invoke-virtual {v6, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 738
    :cond_0
    const v7, 0x7f0e004a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 739
    .local v5, "title":Landroid/widget/TextView;
    const v7, 0x7f080148

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 740
    const v7, 0x7f0e0208

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 741
    .local v4, "ok":Landroid/widget/Button;
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;

    invoke-direct {v7, p0, v0, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    .end local v1    # "i":I
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "ok":Landroid/widget/Button;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_1
    return-void

    .line 732
    .restart local v1    # "i":I
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v6    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getBirthday()V
    .locals 18

    .prologue
    .line 550
    const/4 v6, 0x0

    .line 551
    .local v6, "layout":Landroid/view/View;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 552
    .local v2, "ad":Landroid/app/AlertDialog;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 553
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-nez v15, :cond_4

    .line 554
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 555
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 556
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f04004f

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 558
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 559
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x439b0000    # 310.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v16

    const/high16 v17, 0x43c80000    # 400.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/view/Window;->setLayout(II)V

    .line 561
    const v15, 0x7f0e0205

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 562
    .local v13, "wvY":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const v15, 0x7f0e0206

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 563
    .local v12, "wvM":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const v15, 0x7f0e0207

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 564
    .local v11, "wvD":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setVisibility(I)V

    .line 565
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->YEAR:Ljava/util/List;

    invoke-virtual {v13, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->YEAR:Ljava/util/List;

    const-string v16, "1990"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 568
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->MONTH:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 570
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/User;->getBirthday()Ljava/lang/String;

    move-result-object v9

    .line 576
    .local v9, "strBirthday":Ljava/lang/String;
    invoke-static {v9}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 577
    const-string v9, "19950201"

    .line 578
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v15, v9}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    .line 580
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "birthday="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 581
    const-string v15, "-"

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "infos":[Ljava/lang/String;
    if-eqz v5, :cond_5

    array-length v15, v5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\u5e74"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\u6708"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->y:Ljava/lang/String;

    .line 586
    const/4 v15, 0x1

    aget-object v15, v5, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->m:Ljava/lang/String;

    .line 596
    :goto_0
    const-string/jumbo v15, "y=m"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->y:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "...."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->m:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->YEAR:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_1

    .line 598
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->YEAR:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 599
    invoke-virtual {v13, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 603
    :cond_1
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->MONTH:[Ljava/lang/String;

    array-length v15, v15

    if-ge v3, v15, :cond_3

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->MONTH:[Ljava/lang/String;

    aget-object v7, v15, v3

    .line 605
    .local v7, "month":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 606
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 608
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->m:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 609
    invoke-virtual {v12, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 613
    .end local v7    # "month":Ljava/lang/String;
    :cond_3
    const v15, 0x7f0e004a

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 614
    .local v10, "title":Landroid/widget/TextView;
    const v15, 0x7f0800d2

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(I)V

    .line 615
    const v15, 0x7f0e0208

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 616
    .local v8, "ok":Landroid/widget/Button;
    new-instance v15, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v13, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    .end local v3    # "i":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "infos":[Ljava/lang/String;
    .end local v8    # "ok":Landroid/widget/Button;
    .end local v9    # "strBirthday":Ljava/lang/String;
    .end local v10    # "title":Landroid/widget/TextView;
    .end local v11    # "wvD":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    .end local v12    # "wvM":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    .end local v13    # "wvY":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_4
    return-void

    .line 588
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "infos":[Ljava/lang/String;
    .restart local v9    # "strBirthday":Ljava/lang/String;
    .restart local v11    # "wvD":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    .restart local v12    # "wvM":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    .restart local v13    # "wvY":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_5
    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 589
    .local v14, "year":Ljava/lang/String;
    const/4 v15, 0x4

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 590
    .restart local v7    # "month":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->y:Ljava/lang/String;

    .line 591
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->m:Ljava/lang/String;

    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\u5e74"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\u6708"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 597
    .end local v7    # "month":Ljava/lang/String;
    .end local v14    # "year":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 603
    .restart local v7    # "month":Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method private getHeight()V
    .locals 9

    .prologue
    .line 644
    const/4 v2, 0x0

    .line 645
    .local v2, "layout":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 646
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 647
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 648
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 649
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 650
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400d6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 652
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x439b0000    # 310.0f

    invoke-static {p0, v7}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x43c80000    # 400.0f

    invoke-static {p0, v8}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 655
    const v6, 0x7f0e0361

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 656
    .local v5, "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 657
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->HEIGHT:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 658
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userHeight:I

    add-int/lit8 v6, v6, -0x64

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 659
    const v6, 0x7f0e004a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 660
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f0800d4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 661
    const v6, 0x7f0e0208

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 662
    .local v3, "ok":Landroid/widget/Button;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$12;

    invoke-direct {v6, p0, v0, v5}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "ok":Landroid/widget/Button;
    .end local v4    # "title":Landroid/widget/TextView;
    .end local v5    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_0
    return-void
.end method

.method private getSex()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 502
    const/4 v2, 0x0

    .line 503
    .local v2, "layout":Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 504
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 505
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 507
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 508
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400d6

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x439b0000    # 310.0f

    invoke-static {p0, v8}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x43c80000    # 400.0f

    invoke-static {p0, v9}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 513
    const v7, 0x7f0e0361

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 514
    .local v6, "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 515
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->SEX:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 517
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Sex:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "strSex":Ljava/lang/String;
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->SEX:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 519
    invoke-virtual {v6, v11}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 524
    :goto_0
    const v7, 0x7f0e004a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 525
    .local v5, "title":Landroid/widget/TextView;
    const v7, 0x7f0800d7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 526
    const v7, 0x7f0e0208

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 527
    .local v3, "ok":Landroid/widget/Button;
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;

    invoke-direct {v7, p0, v0, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "ok":Landroid/widget/Button;
    .end local v4    # "strSex":Ljava/lang/String;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_0
    return-void

    .line 521
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "strSex":Ljava/lang/String;
    .restart local v6    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_1
    invoke-virtual {v6, v10}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    goto :goto_0
.end method

.method private getWeight()V
    .locals 9

    .prologue
    .line 679
    const/4 v2, 0x0

    .line 680
    .local v2, "layout":Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 681
    .local v0, "ad":Landroid/app/AlertDialog;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 682
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 684
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 685
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400d6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 687
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 688
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x439b0000    # 310.0f

    invoke-static {p0, v7}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x43c80000    # 400.0f

    invoke-static {p0, v8}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 690
    const v6, 0x7f0e0361

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .line 691
    .local v5, "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setOffset(I)V

    .line 692
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->WEIGHT:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setItems(Ljava/util/List;)V

    .line 693
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userWeight:I

    add-int/lit8 v6, v6, -0x19

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V

    .line 694
    const v6, 0x7f0e004a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 695
    .local v4, "title":Landroid/widget/TextView;
    const v6, 0x7f0800d8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 696
    const v6, 0x7f0e0208

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 697
    .local v3, "ok":Landroid/widget/Button;
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$13;

    invoke-direct {v6, p0, v0, v5}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$13;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "ok":Landroid/widget/Button;
    .end local v4    # "title":Landroid/widget/TextView;
    .end local v5    # "wv":Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;
    :cond_0
    return-void
.end method

.method private gotoBand()V
    .locals 2

    .prologue
    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 491
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->finish()V

    .line 492
    return-void
.end method

.method private initData()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 113
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 114
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 115
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->account_name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 119
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 121
    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "name":[Ljava/lang/String;
    array-length v6, v2

    if-lez v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Name:Landroid/widget/TextView;

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    array-length v6, v2

    if-le v6, v9, :cond_2

    .line 127
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_FamailyName:Landroid/widget/TextView;

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .end local v2    # "name":[Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getSex()Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 132
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Sex:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/User;->getSex()Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/constant/Sex;->getStringId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 134
    :cond_3
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getBirthday()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "strBirthday":Ljava/lang/String;
    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 138
    const-string v4, "19950201"

    .line 139
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6, v4}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    .line 142
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "birthday="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "year":Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {v4, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "month":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "infos":[Ljava/lang/String;
    if-eqz v0, :cond_8

    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_8

    .line 148
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u5e74"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u6708"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 154
    const-string/jumbo v6, "wxf_setting_debug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Height"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userHeight:I

    .line 157
    sget-boolean v6, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-eqz v6, :cond_9

    .line 158
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 166
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Weight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "kg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userWeight:I

    .line 168
    sget-boolean v6, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_weight_Metric:Z

    if-eqz v6, :cond_a

    .line 169
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Weight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "kg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v6, ""

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 178
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-direct {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showHeadImage(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 180
    :cond_7
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->sportAim:Ljava/lang/String;

    .line 181
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Aim:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->sportAim:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f080288

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .line 150
    :cond_8
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u5e74"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u6708"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 160
    :cond_9
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "inch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 171
    :cond_a
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Weight:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getKilogram(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private initList()V
    .locals 6

    .prologue
    .line 197
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f080194

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f080110

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->SEX:[Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, "year":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->YEAR:Ljava/util/List;

    .line 201
    const/16 v1, 0x62

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 202
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->YEAR:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 207
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->HEIGHT:Ljava/util/ArrayList;

    .line 209
    const/16 v1, 0x64

    :goto_1
    const/16 v3, 0xfa

    if-ge v1, v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->HEIGHT:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->WEIGHT:Ljava/util/ArrayList;

    .line 221
    const/16 v1, 0x19

    :goto_2
    const/16 v3, 0xc8

    if-ge v1, v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->WEIGHT:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->AIM:Ljava/util/ArrayList;

    .line 231
    const/16 v1, 0x3e8

    :goto_3
    const/16 v3, 0x61a9

    if-ge v1, v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->AIM:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_3

    .line 234
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 238
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->account_name:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0e011a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Name:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0e011d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_FamailyName:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Sex:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Birthday:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Height:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Weight:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Aim:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0e0117

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mImageButton_photo:Landroid/widget/ImageView;

    .line 248
    return-void
.end method

.method private static synthetic lambda$save$362(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 351
    return-object p0
.end method

.method private synthetic lambda$save$363(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->saveInfo()V

    return-void
.end method

.method private synthetic lambda$save$364(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->saveAim()V

    return-void
.end method

.method private synthetic lambda$setListener$355(Ljava/lang/Void;)V
    .locals 1
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showInputDialog(I)V

    return-void
.end method

.method private synthetic lambda$setListener$356(Ljava/lang/Void;)V
    .locals 1
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showInputDialog(I)V

    return-void
.end method

.method private synthetic lambda$setListener$357(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->checkInput()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$358(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->save()V

    return-void
.end method

.method private synthetic lambda$setListener$359(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$360(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getAim()V

    return-void
.end method

.method private synthetic lambda$setListener$361(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showExitDialog()V

    return-void
.end method

.method private static synthetic lambda$showInputDialog$365(Landroid/app/Dialog;Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 445
    return-void
.end method

.method private synthetic lambda$showInputDialog$366(ILjava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p2, "Void"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 448
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->edt_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->edt_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->edt_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    :cond_0
    if-nez p1, :cond_2

    .line 450
    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 455
    :goto_1
    return-object v0

    .line 451
    :cond_2
    if-ne p1, v2, :cond_1

    .line 452
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method private synthetic lambda$showInputDialog$367(ILandroid/app/Dialog;Ljava/lang/Void;)V
    .locals 3
    .param p3, "Void"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    .line 458
    if-nez p1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->edt_nickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->needToSave:Z

    .line 463
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 464
    return-void

    .line 460
    :cond_1
    if-ne p1, v2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_FamailyName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->edt_nickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private notEmpty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private reSizeImage(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 957
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 958
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "small.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userImageUri:Landroid/net/Uri;

    .line 971
    const-string v1, "output"

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 972
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 974
    return-void
.end method

.method private requestMultiplePermissions()V
    .locals 3

    .prologue
    .line 869
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 870
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    .line 871
    .local v0, "permissions":[Ljava/lang/String;
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 873
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->needToSave:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$8;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 355
    return-void
.end method

.method private saveAim()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->sportAim:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitSportAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$9;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 412
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 418
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 419
    return-void
.end method

.method private saveInfo()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mTextView_Name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setNickname(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V

    .line 407
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitUserInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 408
    return-void
.end method

.method private setHeadPhoto(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 840
    const/4 v1, 0x0

    .line 841
    .local v1, "i":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 866
    :goto_0
    return-void

    .line 844
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v0, "getImageByCamera":Landroid/content/Intent;
    const-string v4, "output"

    const-string v5, "file:///sdcard/temp.jpg"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 850
    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 853
    .end local v0    # "getImageByCamera":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u8bf7\u786e\u8ba4\u5df2\u7ecf\u63d2\u5165SD\u5361"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 854
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 860
    .end local v3    # "state":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 255
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 258
    const v0, 0x7f0e011b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 261
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 265
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 267
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 268
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 275
    const v0, 0x7f0e0122

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 276
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 283
    const v0, 0x7f0e0125

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 284
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 291
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 292
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 299
    const v0, 0x7f0e01fb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 300
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 307
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mImageButton_photo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 308
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 322
    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 326
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 328
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 11
    .param p1, "tcontext"    # Landroid/content/Context;

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->requestMultiplePermissions()V

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, "data":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 789
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    .line 793
    const/4 v5, 0x0

    .line 794
    .local v5, "layout":Landroid/view/View;
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    .line 797
    .local v7, "m":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 799
    .local v2, "d":Landroid/view/Display;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 800
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04007e

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 801
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 803
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 810
    const v9, 0x7f0e0270

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 811
    .local v8, "tv_content":Landroid/widget/TextView;
    const v9, 0x7f0e0271

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 812
    .local v6, "list":Landroid/widget/ListView;
    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;

    invoke-direct {v0, p1, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 815
    .local v0, "adapter":Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 816
    new-instance v9, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$16;

    invoke-direct {v9, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$16;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 826
    .end local v0    # "adapter":Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;
    .end local v2    # "d":Landroid/view/Display;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "list":Landroid/widget/ListView;
    .end local v7    # "m":Landroid/view/WindowManager;
    .end local v8    # "tv_content":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private showExitDialog()V
    .locals 7

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->save()V

    .line 369
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 370
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v5, 0x7f040072

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 373
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 375
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 376
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 380
    const v5, 0x7f0e025b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 381
    .local v0, "btnCancel":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$7;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v5, 0x7f0e025c

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 392
    .local v1, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    return-void
.end method

.method private showHeadImage(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 4
    .param p1, "loginUser"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 187
    .local v1, "photo":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "output":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mImageButton_photo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "output":Landroid/graphics/Bitmap;
    .end local v1    # "photo":[B
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showHeadImageChooseDialog(Landroid/content/Context;)V
    .locals 9
    .param p1, "tcontext"    # Landroid/content/Context;

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "data":[Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 757
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v7, 0x7f04007e

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 760
    .local v6, "view":Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 762
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 763
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 765
    const v7, 0x7f0e0270

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 766
    .local v5, "tv_content":Landroid/widget/TextView;
    const v7, 0x7f0e0271

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 767
    .local v4, "list":Landroid/widget/ListView;
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;

    invoke-direct {v0, p1, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 770
    .local v0, "adapter":Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 773
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;

    invoke-direct {v7, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$15;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 782
    return-void
.end method

.method private showImage(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v6, 0x64

    .line 920
    const-string v4, "showImage: "

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 922
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 925
    .local v3, "photo":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 926
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " baos.toByteArray().length=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 928
    const/16 v2, 0x64

    .line 930
    .local v2, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v6, :cond_0

    .line 931
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 933
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 934
    add-int/lit8 v2, v2, -0xa

    goto :goto_0

    .line 936
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " baos.toByteArray().length=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 939
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 941
    :try_start_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setPortrait(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 945
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 946
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->needToSave:Z

    .line 947
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->mImageButton_photo:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 953
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "options":I
    .end local v3    # "photo":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    return-void

    .line 942
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "options":I
    .restart local v3    # "photo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 949
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "options":I
    .end local v3    # "photo":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 950
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "\u5934\u50cf\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private showInputDialog(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x2

    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, "layout":Landroid/view/View;
    new-instance v0, Landroid/app/Dialog;

    const v3, 0x7f0a014c

    invoke-direct {v0, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 430
    .local v0, "ad":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 432
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 433
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040056

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 434
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const v3, 0x7f0e021e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->edt_nickname:Landroid/widget/EditText;

    .line 436
    const v3, 0x7f0e021c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->btn_cancle:Landroid/widget/Button;

    .line 437
    const v3, 0x7f0e021d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->btn_sure:Landroid/widget/Button;

    .line 438
    const v3, 0x7f0e0217

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->title_alarm:Landroid/widget/TextView;

    .line 443
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->btn_cancle:Landroid/widget/Button;

    invoke-static {v3}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$11;->lambdaFactory$(Landroid/app/Dialog;)Lrx/functions/Action1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 446
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->btn_sure:Landroid/widget/Button;

    invoke-static {v3}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;I)Lrx/functions/Func1;

    move-result-object v4

    .line 447
    invoke-virtual {v3, v4}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    invoke-static {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;ILandroid/app/Dialog;)Lrx/functions/Action1;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 465
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 467
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resultCode=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 898
    if-nez p2, :cond_0

    .line 917
    :goto_0
    return-void

    .line 901
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 903
    const-string v0, "onActivityResult: from photo"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 904
    const-string v0, "file:///sdcard/temp.jpg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->imageUri:Landroid/net/Uri;

    .line 905
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->reSizeImage(Landroid/net/Uri;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 916
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 907
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 909
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->imageUri:Landroid/net/Uri;

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->reSizeImage(Landroid/net/Uri;)V

    goto :goto_1

    .line 912
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->userImageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->showImage(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onBackPressed()V

    .line 105
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->saveInfo()V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->needToSave:Z

    .line 96
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->initView()V

    .line 97
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->initData()V

    .line 98
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->initList()V

    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->setListener()V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->save()V

    .line 361
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->finish()V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 877
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 878
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_1

    .line 879
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 880
    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 881
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/meizu/smart/wristband/StartActivity;->quit_flag:Ljava/lang/Boolean;

    .line 882
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->ad:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 879
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->setContentView(I)V

    .line 90
    return-void
.end method
