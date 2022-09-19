.class final Lcom/corncop/capricornus/zip/ZTFileUtil$1;
.super Ljava/lang/Object;
.source "ZTFileUtil.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZTFileUtil;->listFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
