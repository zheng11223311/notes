.class public final Lcom/sea_monster/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final entry:Lcom/sea_monster/cache/DiskLruCache$Entry;

.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/sea_monster/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$Entry;J[Ljava/io/InputStream;[J)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/sea_monster/cache/DiskLruCache$Entry;
    .param p4, "sequenceNumber"    # J
    .param p6, "ins"    # [Ljava/io/InputStream;
    .param p7, "lengths"    # [J

    .prologue
    .line 694
    iput-object p1, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->this$0:Lcom/sea_monster/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p2, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 696
    iput-wide p4, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 697
    iput-object p6, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 698
    iput-object p7, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->lengths:[J

    .line 699
    iput-object p3, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->entry:Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 700
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$Entry;J[Ljava/io/InputStream;[JLcom/sea_monster/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/cache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/sea_monster/cache/DiskLruCache$Entry;
    .param p4, "x3"    # J
    .param p6, "x4"    # [Ljava/io/InputStream;
    .param p7, "x5"    # [J
    .param p8, "x6"    # Lcom/sea_monster/cache/DiskLruCache$1;

    .prologue
    .line 687
    invoke-direct/range {p0 .. p7}, Lcom/sea_monster/cache/DiskLruCache$Snapshot;-><init>(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$Entry;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, "arr$":[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 738
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/sea_monster/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/sea_monster/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->this$0:Lcom/sea_monster/cache/DiskLruCache;

    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/sea_monster/cache/DiskLruCache;->access$1600(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;J)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->entry:Lcom/sea_monster/cache/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
