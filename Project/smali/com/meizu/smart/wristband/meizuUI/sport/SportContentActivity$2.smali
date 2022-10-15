.class Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$2;
.super Ljava/lang/Object;
.source "SportContentActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->updateSportList(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;)I
    .locals 4
    .param p1, "listItem1"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;
    .param p2, "listItem2"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;

    .prologue
    .line 453
    move-object v0, p1

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;

    .local v0, "s1":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
    move-object v1, p2

    .line 454
    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;

    .line 455
    .local v1, "s2":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->startTime:Ljava/util/Date;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->startTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 450
    check-cast p1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;

    check-cast p2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$2;->compare(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;)I

    move-result v0

    return v0
.end method
