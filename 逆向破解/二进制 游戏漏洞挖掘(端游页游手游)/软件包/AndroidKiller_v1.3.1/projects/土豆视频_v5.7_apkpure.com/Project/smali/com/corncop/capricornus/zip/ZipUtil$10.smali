.class final Lcom/corncop/capricornus/zip/ZipUtil$10;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->copyEntries(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dirNames:Ljava/util/Set;

.field final synthetic val$ignoredEntries:Ljava/util/Set;

.field final synthetic val$names:Ljava/util/Set;

.field final synthetic val$out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$ignoredEntries:Ljava/util/Set;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$dirNames:Ljava/util/Set;

    iput-object p3, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$names:Ljava/util/Set;

    iput-object p4, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$out:Ljava/util/zip/ZipOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1762
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, "entryName":Ljava/lang/String;
    iget-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$ignoredEntries:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$dirNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1768
    .local v0, "dirName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1773
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$names:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1774
    iget-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$10;->val$out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1, v2}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0

    .line 1776
    :cond_4
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1777
    const-string v2, "ZipUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate entry: {}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
