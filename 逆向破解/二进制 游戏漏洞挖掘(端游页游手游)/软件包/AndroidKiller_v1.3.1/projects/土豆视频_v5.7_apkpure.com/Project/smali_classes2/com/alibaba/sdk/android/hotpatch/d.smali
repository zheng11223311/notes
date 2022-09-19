.class final Lcom/alibaba/sdk/android/hotpatch/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/sdk/android/hotpatch/c;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/d;->b:Lcom/alibaba/sdk/android/hotpatch/c;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/d;->b:Lcom/alibaba/sdk/android/hotpatch/c;

    invoke-static {v1}, Lcom/alibaba/sdk/android/hotpatch/c;->a(Lcom/alibaba/sdk/android/hotpatch/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/d;->b:Lcom/alibaba/sdk/android/hotpatch/c;

    invoke-static {v3}, Lcom/alibaba/sdk/android/hotpatch/c;->b(Lcom/alibaba/sdk/android/hotpatch/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/hotpatch/d;->b:Lcom/alibaba/sdk/android/hotpatch/c;

    invoke-static {v4}, Lcom/alibaba/sdk/android/hotpatch/c;->c(Lcom/alibaba/sdk/android/hotpatch/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->onDownloadFinsh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
