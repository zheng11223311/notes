.class final Lcom/alibaba/sdk/android/hotpatch/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/hotpatch/HotPatchManager$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/a;->b:Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "hotpatch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Now is in onQueryFinished "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method
