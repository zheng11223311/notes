.class public final Lcom/alibaba/sdk/android/hotpatch/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/update/Downloader$OnDownloaderListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/hotpatch/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/c;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/hotpatch/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/hotpatch/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/hotpatch/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/c;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onDownloadError(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->onDownloadError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final onDownloadFinsh(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/hotpatch/d;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/hotpatch/d;-><init>(Lcom/alibaba/sdk/android/hotpatch/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDownloadProgress(I)V
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->onDownloadProgress(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
