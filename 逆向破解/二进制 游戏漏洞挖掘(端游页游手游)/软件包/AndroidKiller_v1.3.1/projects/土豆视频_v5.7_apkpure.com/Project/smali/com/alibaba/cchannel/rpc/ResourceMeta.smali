.class public Lcom/alibaba/cchannel/rpc/ResourceMeta;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/cchannel/rpc/ResourceMeta;


# instance fields
.field public resourceInfoManager:Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/cchannel/rpc/ResourceMeta;

    invoke-direct {v0}, Lcom/alibaba/cchannel/rpc/ResourceMeta;-><init>()V

    sput-object v0, Lcom/alibaba/cchannel/rpc/ResourceMeta;->a:Lcom/alibaba/cchannel/rpc/ResourceMeta;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/cchannel/rpc/ResourceMeta;
    .locals 1

    sget-object v0, Lcom/alibaba/cchannel/rpc/ResourceMeta;->a:Lcom/alibaba/cchannel/rpc/ResourceMeta;

    return-object v0
.end method


# virtual methods
.method public enableMagicRPC(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/alibaba/cchannel/rpc/utils/FileUtils;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "resource_meta_infos.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;->getInstance(Ljava/io/File;)Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/cchannel/rpc/ResourceMeta;->resourceInfoManager:Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResourceMeta(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/registry/metainfo/Resource;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/ResourceMeta;->resourceInfoManager:Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/ResourceMeta;->resourceInfoManager:Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;

    new-instance v1, Lcom/alibaba/cchannel/registry/metainfo/Domain;

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/cchannel/registry/metainfo/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/cchannel/registry/util/ResourceInfoManager;->findResource(Lcom/alibaba/cchannel/registry/metainfo/Domain;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/cchannel/registry/metainfo/Resource;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
