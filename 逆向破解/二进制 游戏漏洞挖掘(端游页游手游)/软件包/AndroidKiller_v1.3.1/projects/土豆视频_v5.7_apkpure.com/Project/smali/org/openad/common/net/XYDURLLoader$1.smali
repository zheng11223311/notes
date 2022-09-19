.class Lorg/openad/common/net/XYDURLLoader$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openad/common/net/XYDURLLoader;->load(Lorg/openad/common/net/XYDURLRequest;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openad/common/net/XYDURLLoader;

.field final synthetic val$request:Lorg/openad/common/net/XYDURLRequest;

.field final synthetic val$timeOutSeconds:D


# direct methods
.method constructor <init>(Lorg/openad/common/net/XYDURLLoader;Lorg/openad/common/net/XYDURLRequest;D)V
    .locals 1

    iput-object p1, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    iput-object p2, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$request:Lorg/openad/common/net/XYDURLRequest;

    iput-wide p3, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$timeOutSeconds:D

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$request:Lorg/openad/common/net/XYDURLRequest;

    iget-wide v0, v0, Lorg/openad/common/net/XYDURLRequest;->delayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$request:Lorg/openad/common/net/XYDURLRequest;

    iget-wide v0, v0, Lorg/openad/common/net/XYDURLRequest;->delayMs:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    iget-wide v0, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$timeOutSeconds:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    iget-object v2, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    iget-object v3, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$request:Lorg/openad/common/net/XYDURLRequest;

    invoke-virtual {v2, v3, v0}, Lorg/openad/common/net/XYDURLLoader;->initHttpClient(Lorg/openad/common/net/XYDURLRequest;I)Lorg/openad/common/net/IXYDHttpClient;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/openad/common/net/XYDURLLoader;->access$002(Lorg/openad/common/net/XYDURLLoader;Lorg/openad/common/net/IXYDHttpClient;)Lorg/openad/common/net/IXYDHttpClient;

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    invoke-static {v0}, Lorg/openad/common/net/XYDURLLoader;->access$100(Lorg/openad/common/net/XYDURLLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    iget-object v1, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    invoke-static {v1}, Lorg/openad/common/net/XYDURLLoader;->access$000(Lorg/openad/common/net/XYDURLLoader;)Lorg/openad/common/net/IXYDHttpClient;

    move-result-object v1

    iget-object v2, p0, Lorg/openad/common/net/XYDURLLoader$1;->val$request:Lorg/openad/common/net/XYDURLRequest;

    invoke-virtual {v0, v1, v2}, Lorg/openad/common/net/XYDURLLoader;->issueHttpRequest(Lorg/openad/common/net/IXYDHttpClient;Lorg/openad/common/net/XYDURLRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/openad/common/net/XYDURLLoader$1;->this$0:Lorg/openad/common/net/XYDURLLoader;

    new-instance v2, Lorg/openad/events/XYDEvent;

    const-string v3, "URLLoader.Load.Error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/openad/common/net/XYDURLLoader;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
