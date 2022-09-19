.class final Lcom/alibaba/sdk/android/hotpatch/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/io/File;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->d:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/sdk/android/hotpatch/impl/a;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method
