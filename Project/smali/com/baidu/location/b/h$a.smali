.class Lcom/baidu/location/b/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/h;

.field do:D

.field if:D


# direct methods
.method constructor <init>(Lcom/baidu/location/b/h;DD)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/h$a;->a:Lcom/baidu/location/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/baidu/location/b/h$a;->do:D

    iput-wide p4, p0, Lcom/baidu/location/b/h$a;->if:D

    return-void
.end method
