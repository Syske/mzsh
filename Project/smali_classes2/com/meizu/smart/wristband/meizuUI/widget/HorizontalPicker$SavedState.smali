.class public Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HorizontalPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSelItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1246
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->mSelItem:I

    .line 1228
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;

    .prologue
    .line 1217
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1222
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1223
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;

    .prologue
    .line 1217
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->mSelItem:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;
    .param p1, "x1"    # I

    .prologue
    .line 1217
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->mSelItem:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalPicker.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1240
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->mSelItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1232
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1234
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$SavedState;->mSelItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    return-void
.end method
