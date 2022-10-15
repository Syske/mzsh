.class final Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;
.super Ljava/lang/Object;
.source "SeekBarChangeOnSubscribe.java"

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
.field private final shouldBeFromUser:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final view:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SeekBar;
    .param p2, "shouldBeFromUser"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    .line 18
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->shouldBeFromUser:Ljava/lang/Boolean;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->shouldBeFromUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->call(Lrx/Subscriber;)V

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
    .line 22
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;Lrx/Subscriber;)V

    .line 37
    .local v0, "listener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 39
    new-instance v1, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
