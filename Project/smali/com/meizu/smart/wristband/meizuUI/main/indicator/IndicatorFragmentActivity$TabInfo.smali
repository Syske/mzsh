.class public Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
.super Ljava/lang/Object;
.source "IndicatorFragmentActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private footcolor:I

.field public fragment:Landroid/support/v4/app/Fragment;

.field public hasTips:Z

.field private icon:I

.field private id:I

.field private name:Ljava/lang/String;

.field public notifyChange:Z

.field private textcolor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo$1;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo$1;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;I)V

    .line 290
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const v0, 0x7f0d0073

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->footcolor:I

    .line 282
    const v0, 0x7f0d00bb

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->textcolor:I

    .line 283
    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 284
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->hasTips:Z

    .line 285
    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 286
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->notifyChange:Z

    .line 307
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 308
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->id:I

    .line 309
    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->icon:I

    .line 310
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "textcolor"    # I
    .param p4, "footcolor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const v0, 0x7f0d0073

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->footcolor:I

    .line 282
    const v0, 0x7f0d00bb

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->textcolor:I

    .line 283
    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 284
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->hasTips:Z

    .line 285
    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 286
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->notifyChange:Z

    .line 298
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 299
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->id:I

    .line 300
    iput p4, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->footcolor:I

    .line 301
    iput p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->textcolor:I

    .line 302
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "hasTips"    # Z

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;I)V

    .line 294
    iput-boolean p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->hasTips:Z

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const v2, 0x7f0d0073

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->footcolor:I

    .line 282
    const v2, 0x7f0d00bb

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->textcolor:I

    .line 283
    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 284
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->hasTips:Z

    .line 285
    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 286
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->notifyChange:Z

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->id:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->icon:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->notifyChange:Z

    .line 317
    return-void

    :cond_0
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .prologue
    .line 277
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->textcolor:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .prologue
    .line 277
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->footcolor:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->icon:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "iconid"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->icon:I

    .line 337
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->id:I

    .line 325
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 381
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->notifyChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
