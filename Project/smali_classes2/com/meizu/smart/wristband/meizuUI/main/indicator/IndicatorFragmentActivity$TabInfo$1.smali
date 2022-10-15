.class final Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo$1;
.super Ljava/lang/Object;
.source "IndicatorFragmentActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 366
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-direct {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 370
    new-array v0, p1, [Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo$1;->newArray(I)[Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    move-result-object v0

    return-object v0
.end method
