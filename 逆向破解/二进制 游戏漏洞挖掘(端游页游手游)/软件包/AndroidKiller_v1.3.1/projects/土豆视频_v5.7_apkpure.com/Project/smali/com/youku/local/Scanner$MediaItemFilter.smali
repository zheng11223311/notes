.class Lcom/youku/local/Scanner$MediaItemFilter;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/local/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaItemFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/local/Scanner;


# direct methods
.method constructor <init>(Lcom/youku/local/Scanner;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/youku/local/Scanner$MediaItemFilter;->this$0:Lcom/youku/local/Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "accepted":Z
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/youku/local/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    const/4 v0, 0x1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 275
    .local v1, "dotIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "fileExt":Ljava/lang/String;
    sget-object v4, Lcom/youku/local/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
