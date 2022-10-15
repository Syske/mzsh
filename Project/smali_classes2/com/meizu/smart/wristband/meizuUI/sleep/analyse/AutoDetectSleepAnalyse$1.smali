.class final Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse$1;
.super Ljava/lang/Object;
.source "AutoDetectSleepAnalyse.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->analyse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;)I
    .locals 2
    .param p1, "state1"    # Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .param p2, "state2"    # Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    check-cast p2, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse$1;->compare(Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;)I

    move-result v0

    return v0
.end method
