.class public Lcom/tencent/bugly/proguard/ag;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/proguard/ag;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/ag;)I
    .locals 4

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ag;->c:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/ag;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/tencent/bugly/proguard/ag;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ag;->a(Lcom/tencent/bugly/proguard/ag;)I

    move-result v0

    return v0
.end method
