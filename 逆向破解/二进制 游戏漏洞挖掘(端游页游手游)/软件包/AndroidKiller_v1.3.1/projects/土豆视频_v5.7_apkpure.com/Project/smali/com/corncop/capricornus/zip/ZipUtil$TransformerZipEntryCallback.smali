.class Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformerZipEntryCallback"
.end annotation


# instance fields
.field private final entryByPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private final entryCount:I

.field private final names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/zip/ZipOutputStream;)V
    .locals 1
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;",
            ">;",
            "Ljava/util/zip/ZipOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2251
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/transform/ZipEntryTransformerEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->names:Ljava/util/Set;

    .line 2252
    invoke-static {p1}, Lcom/corncop/capricornus/zip/ZipUtil;->transformersByPath(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->entryByPath:Ljava/util/Map;

    .line 2253
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->entryByPath:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->entryCount:I

    .line 2254
    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    .line 2255
    return-void
.end method


# virtual methods
.method public found()Z
    .locals 2

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->entryByPath:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->entryCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2258
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->names:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2259
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->entryByPath:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    .line 2260
    .local v0, "entry":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    if-eqz v0, :cond_1

    .line 2261
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    invoke-interface {v0, p1, p2, v1}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;->transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V

    .line 2270
    .end local v0    # "entry":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    :cond_0
    :goto_0
    return-void

    .line 2264
    .restart local v0    # "entry":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    :cond_1
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$TransformerZipEntryCallback;->out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1, v1}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0

    .line 2267
    .end local v0    # "entry":Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;
    :cond_2
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2268
    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate entry: {}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
