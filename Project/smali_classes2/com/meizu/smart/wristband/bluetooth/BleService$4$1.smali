.class Lcom/meizu/smart/wristband/bluetooth/BleService$4$1;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService$4;->call(Ljava/util/List;)Lrx/Observable;
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
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$4;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleService$4;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$4$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/smart/wristband/bluetooth/BleDevice;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)I
    .locals 3
    .param p1, "lhs"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    .param p2, "rhs"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 347
    .local v0, "rssi1":Ljava/lang/Integer;
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 348
    .local v1, "rssi2":Ljava/lang/Integer;
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 343
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    check-cast p2, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$4$1;->compare(Lcom/meizu/smart/wristband/bluetooth/BleDevice;Lcom/meizu/smart/wristband/bluetooth/BleDevice;)I

    move-result v0

    return v0
.end method
