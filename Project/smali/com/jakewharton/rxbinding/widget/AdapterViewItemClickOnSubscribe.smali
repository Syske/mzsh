.class final Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;
.super Ljava/lang/Object;
.source "AdapterViewItemClickOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;->view:Landroid/widget/AdapterView;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;)Landroid/widget/AdapterView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;->view:Landroid/widget/AdapterView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;Lrx/Subscriber;)V

    .line 28
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;->view:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    new-instance v1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 35
    return-void
.end method
