.class public Lorg/openad/common/util/XYDTimer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openad/common/util/XYDTimer$EventHandler;
    }
.end annotation


# static fields
.field private static CLASSTAG:Ljava/lang/String; = null

.field private static final INITIALIZED:I = -0x1

.field private static final PAUSED:I = 0x1

.field private static final RUNNING:I = 0x0

.field private static final STOPED:I = 0x2


# instance fields
.field private counter:I

.field private delay:I

.field private duration:I

.field private handler:Lorg/openad/common/util/XYDTimer$EventHandler;

.field private state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "XYDTimer"

    sput-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/openad/common/util/XYDTimer$EventHandler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RendererTimer(duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lorg/openad/common/util/XYDTimer;->duration:I

    iput p1, p0, Lorg/openad/common/util/XYDTimer;->counter:I

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/openad/common/util/XYDTimer;->delay:I

    iput-object p2, p0, Lorg/openad/common/util/XYDTimer;->handler:Lorg/openad/common/util/XYDTimer$EventHandler;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/openad/common/util/XYDTimer;->timer:Ljava/util/Timer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lorg/openad/common/util/XYDTimer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/openad/common/util/XYDTimer;)I
    .locals 1

    iget v0, p0, Lorg/openad/common/util/XYDTimer;->counter:I

    return v0
.end method

.method static synthetic access$110(Lorg/openad/common/util/XYDTimer;)I
    .locals 2

    iget v0, p0, Lorg/openad/common/util/XYDTimer;->counter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/openad/common/util/XYDTimer;->counter:I

    return v0
.end method

.method static synthetic access$200(Lorg/openad/common/util/XYDTimer;)Lorg/openad/common/util/XYDTimer$EventHandler;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->handler:Lorg/openad/common/util/XYDTimer$EventHandler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/openad/common/util/XYDTimer;)I
    .locals 1

    iget v0, p0, Lorg/openad/common/util/XYDTimer;->duration:I

    return v0
.end method


# virtual methods
.method public pause()V
    .locals 2

    sget-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    sget-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, Lorg/openad/common/util/XYDTimer;->duration:I

    iput v0, p0, Lorg/openad/common/util/XYDTimer;->counter:I

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public start()V
    .locals 6

    sget-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Lorg/openad/common/util/XYDTimer$1;

    invoke-direct {v1, p0}, Lorg/openad/common/util/XYDTimer$1;-><init>(Lorg/openad/common/util/XYDTimer;)V

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    iget v4, p0, Lorg/openad/common/util/XYDTimer;->delay:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lorg/openad/common/util/XYDTimer;->CLASSTAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lorg/openad/common/util/XYDTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openad/common/util/XYDTimer;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
