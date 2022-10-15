.class public Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;
.super Ljava/lang/Object;
.source "FBDBTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/database/FBDBTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtDevVersion"
.end annotation


# static fields
.field public static final NEW_MARKS_VERSION_CODE:I = 0x6

.field public static final OLD_MARKS_VERSION_CODE:Ljava/lang/String; = "001"


# instance fields
.field public marksCode:Ljava/lang/String;

.field public verCode:Ljava/lang/String;

.field public verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
