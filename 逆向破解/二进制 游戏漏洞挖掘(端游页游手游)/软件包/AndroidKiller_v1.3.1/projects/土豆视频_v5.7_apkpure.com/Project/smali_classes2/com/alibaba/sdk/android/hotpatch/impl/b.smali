.class final Lcom/alibaba/sdk/android/hotpatch/impl/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->c:I

    iput-object p5, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "hotpatch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to download the patch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/b;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)V

    goto :goto_0
.end method
