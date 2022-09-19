.class final Lcom/corncop/capricornus/zip/ZipUtil$9;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->copyEntries(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$names:Ljava/util/Set;

.field final synthetic val$out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$9;->val$names:Ljava/util/Set;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$9;->val$out:Ljava/util/zip/ZipOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 1736
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1737
    .local v0, "entryName":Ljava/lang/String;
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$9;->val$names:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1738
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$9;->val$out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1, v1}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1740
    :cond_1
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1741
    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate entry: {}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
