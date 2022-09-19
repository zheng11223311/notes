.class final Lcom/alibaba/sdk/android/task/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/callback/InitResultCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

.field final synthetic b:Lcom/alibaba/sdk/android/callback/InitResultCallback;

.field final synthetic c:Lcom/alibaba/sdk/android/task/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/task/a;Lcom/alibaba/sdk/android/trace/ActionTraceLogger;Lcom/alibaba/sdk/android/callback/InitResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/task/b;->c:Lcom/alibaba/sdk/android/task/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/task/b;->a:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    iput-object p3, p0, Lcom/alibaba/sdk/android/task/b;->b:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->c:Lcom/alibaba/sdk/android/task/a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->a:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->getCaseTime()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/alibaba/sdk/android/task/a;->a(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->a:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->b:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->b:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/callback/InitResultCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->c:Lcom/alibaba/sdk/android/task/a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->a:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->getCaseTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/task/a;->a(J)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->a:Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->success()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->b:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/b;->b:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/callback/InitResultCallback;->onSuccess()V

    :cond_0
    return-void
.end method
