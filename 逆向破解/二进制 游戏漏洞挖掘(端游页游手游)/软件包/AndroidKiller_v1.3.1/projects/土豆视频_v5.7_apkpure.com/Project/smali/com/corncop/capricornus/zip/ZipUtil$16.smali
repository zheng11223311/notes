.class final Lcom/corncop/capricornus/zip/ZipUtil$16;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->addOrReplaceEntries(Ljava/io/File;[Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entryByPath:Ljava/util/Map;

.field final synthetic val$names:Ljava/util/Set;

.field final synthetic val$out:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    .prologue
    .line 2009
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$names:Ljava/util/Set;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$entryByPath:Ljava/util/Map;

    iput-object p3, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$out:Ljava/util/zip/ZipOutputStream;

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
    .line 2011
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$names:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2012
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$entryByPath:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corncop/capricornus/zip/ZipEntrySource;

    .line 2013
    .local v0, "entry":Lcom/corncop/capricornus/zip/ZipEntrySource;
    if-eqz v0, :cond_1

    .line 2014
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$out:Ljava/util/zip/ZipOutputStream;

    invoke-static {v0, v1}, Lcom/corncop/capricornus/zip/ZipUtil;->access$400(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V

    .line 2023
    .end local v0    # "entry":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :cond_0
    :goto_0
    return-void

    .line 2017
    .restart local v0    # "entry":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :cond_1
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$16;->val$out:Ljava/util/zip/ZipOutputStream;

    invoke-static {p2, p1, v1}, Lcom/corncop/capricornus/zip/ZipEntryUtil;->copyEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0

    .line 2020
    .end local v0    # "entry":Lcom/corncop/capricornus/zip/ZipEntrySource;
    :cond_2
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2021
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
