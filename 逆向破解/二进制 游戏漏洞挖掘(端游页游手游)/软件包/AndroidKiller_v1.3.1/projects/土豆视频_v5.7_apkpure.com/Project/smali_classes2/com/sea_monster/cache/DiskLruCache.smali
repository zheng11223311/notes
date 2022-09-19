.class public final Lcom/sea_monster/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/cache/DiskLruCache$Entry;,
        Lcom/sea_monster/cache/DiskLruCache$Editor;,
        Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final STRING_KEY_PATTERN:Ljava/lang/String; = "[a-z0-9_-]{1,120}"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sea_monster/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sea_monster/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 743
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache$2;

    invoke-direct {v0}, Lcom/sea_monster/cache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/sea_monster/cache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 158
    iput-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->nextSequenceNumber:J

    .line 163
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sea_monster/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/sea_monster/cache/DiskLruCache$1;-><init>(Lcom/sea_monster/cache/DiskLruCache;)V

    iput-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 182
    iput-object p1, p0, Lcom/sea_monster/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 183
    iput p2, p0, Lcom/sea_monster/cache/DiskLruCache;->appVersion:I

    .line 184
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 187
    iput p3, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    .line 188
    iput-wide p4, p0, Lcom/sea_monster/cache/DiskLruCache;->maxSize:J

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/sea_monster/cache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sea_monster/cache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;J)Lcom/sea_monster/cache/DiskLruCache$Editor;
    .locals 2
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/sea_monster/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0}, Lcom/sea_monster/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sea_monster/cache/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;

    .prologue
    .line 86
    iget v0, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sea_monster/cache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sea_monster/cache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sea_monster/cache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sea_monster/cache/DiskLruCache;Lcom/sea_monster/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;
    .param p1, "x1"    # Lcom/sea_monster/cache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/cache/DiskLruCache;->completeEdit(Lcom/sea_monster/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sea_monster/cache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/sea_monster/cache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/cache/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/sea_monster/cache/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/sea_monster/cache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sea_monster/cache/DiskLruCache$Editor;->access$1400(Lcom/sea_monster/cache/DiskLruCache$Editor;)Lcom/sea_monster/cache/DiskLruCache$Entry;

    move-result-object v2

    .line 519
    .local v2, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 520
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v2    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 524
    .restart local v2    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$600(Lcom/sea_monster/cache/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 525
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4

    .line 526
    invoke-static {p1}, Lcom/sea_monster/cache/DiskLruCache$Editor;->access$1500(Lcom/sea_monster/cache/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 527
    invoke-virtual {p1}, Lcom/sea_monster/cache/DiskLruCache$Editor;->abort()V

    .line 528
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 530
    :cond_1
    invoke-virtual {v2, v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 531
    invoke-virtual {p1}, Lcom/sea_monster/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 525
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7

    .line 538
    invoke-virtual {v2, v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 539
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 540
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 541
    invoke-virtual {v2, v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 542
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 543
    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1000(Lcom/sea_monster/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 544
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 545
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1000(Lcom/sea_monster/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 546
    iget-wide v8, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    .line 537
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 549
    :cond_6
    invoke-static {v1}, Lcom/sea_monster/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 553
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    .line 554
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$702(Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$Editor;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    .line 555
    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$600(Lcom/sea_monster/cache/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 556
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$602(Lcom/sea_monster/cache/DiskLruCache$Entry;Z)Z

    .line 557
    iget-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1100(Lcom/sea_monster/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 558
    if-eqz p2, :cond_8

    .line 559
    iget-wide v8, p0, Lcom/sea_monster/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/sea_monster/cache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1202(Lcom/sea_monster/cache/DiskLruCache$Entry;J)J

    .line 565
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 567
    iget-wide v8, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/sea_monster/cache/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 568
    :cond_9
    iget-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/sea_monster/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 562
    :cond_a
    iget-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1100(Lcom/sea_monster/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1100(Lcom/sea_monster/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 395
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/sea_monster/cache/DiskLruCache$Editor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 461
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->checkNotClosed()V

    .line 462
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 464
    .local v1, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1200(Lcom/sea_monster/cache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 481
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 468
    :cond_1
    if-nez v1, :cond_3

    .line 469
    :try_start_1
    new-instance v1, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;-><init>(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$1;)V

    .line 470
    .restart local v1    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_2
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sea_monster/cache/DiskLruCache$Editor;-><init>(Lcom/sea_monster/cache/DiskLruCache;Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$1;)V

    .line 476
    .local v0, "editor":Lcom/sea_monster/cache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$702(Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$Editor;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    .line 479
    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    .end local v0    # "editor":Lcom/sea_monster/cache/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 471
    .restart local v1    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/sea_monster/cache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/sea_monster/cache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 577
    const/16 v0, 0x7d0

    .line 578
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/sea_monster/cache/DiskLruCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    if-gtz p2, :cond_1

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 222
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 223
    .local v0, "cache":Lcom/sea_monster/cache/DiskLruCache;
    iget-object v1, v0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    :try_start_0
    invoke-direct {v0}, Lcom/sea_monster/cache/DiskLruCache;->readJournal()V

    .line 226
    invoke-direct {v0}, Lcom/sea_monster/cache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 243
    .end local v0    # "cache":Lcom/sea_monster/cache/DiskLruCache;
    .local v7, "cache":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 217
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/sea_monster/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 228
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/sea_monster/cache/DiskLruCache;
    :catch_0
    move-exception v9

    .line 229
    .local v9, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Lcom/sea_monster/cache/DiskLruCache;->delete()V

    .line 240
    .end local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 241
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache;

    .end local v0    # "cache":Lcom/sea_monster/cache/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 242
    .restart local v0    # "cache":Lcom/sea_monster/cache/DiskLruCache;
    invoke-direct {v0}, Lcom/sea_monster/cache/DiskLruCache;->rebuildJournal()V

    move-object v7, v0

    .line 243
    .restart local v7    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/sea_monster/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 331
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sea_monster/cache/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 333
    .local v0, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 334
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 335
    iget-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1000(Lcom/sea_monster/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$702(Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$Editor;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    .line 339
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 340
    invoke-virtual {v0, v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/sea_monster/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/sea_monster/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 343
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 346
    .end local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v5, Lcom/sea_monster/cache/StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/sea_monster/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/sea_monster/cache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 249
    .local v5, "reader":Lcom/sea_monster/cache/StrictLineReader;
    :try_start_0
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sea_monster/cache/DiskLruCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 259
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/sea_monster/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 263
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 266
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sea_monster/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v2

    .line 272
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    .line 275
    invoke-virtual {v5}, Lcom/sea_monster/cache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :goto_1
    invoke-static {v5}, Lcom/sea_monster/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 284
    return-void

    .line 278
    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v11, Lcom/sea_monster/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 287
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 288
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 289
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 292
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 293
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 295
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 296
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    iget-object v6, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 302
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 306
    .local v0, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    if-nez v0, :cond_4

    .line 307
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/sea_monster/cache/DiskLruCache$Entry;-><init>(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$1;)V

    .line 308
    .restart local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_4
    if-eq v5, v7, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 312
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$602(Lcom/sea_monster/cache/DiskLruCache$Entry;Z)Z

    .line 314
    invoke-static {v0, v8}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$702(Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$Editor;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    .line 315
    invoke-static {v0, v4}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$800(Lcom/sea_monster/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 317
    new-instance v6, Lcom/sea_monster/cache/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/sea_monster/cache/DiskLruCache$Editor;-><init>(Lcom/sea_monster/cache/DiskLruCache;Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$1;)V

    invoke-static {v0, v6}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$702(Lcom/sea_monster/cache/DiskLruCache$Entry;Lcom/sea_monster/cache/DiskLruCache$Editor;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    goto :goto_0

    .line 318
    :cond_6
    if-ne v5, v7, :cond_7

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 321
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 357
    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/sea_monster/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    .local v2, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    iget v3, p0, Lcom/sea_monster/cache/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget v3, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 371
    .local v0, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1100(Lcom/sea_monster/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    .end local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    .end local v2    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 374
    .restart local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1100(Lcom/sea_monster/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 378
    .end local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 381
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sea_monster/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 384
    :cond_3
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sea_monster/cache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 387
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/sea_monster/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v6, Lcom/sea_monster/cache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    if-eqz p2, :cond_0

    .line 399
    invoke-static {p1}, Lcom/sea_monster/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 404
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    :goto_0
    iget-wide v2, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 658
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sea_monster/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 660
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 673
    sget-object v1, Lcom/sea_monster/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 674
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 653
    :goto_0
    monitor-exit p0

    return-void

    .line 645
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 646
    .local v0, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 647
    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sea_monster/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 642
    .end local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 650
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->trimToSize()V

    .line 651
    iget-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 652
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/sea_monster/cache/DiskLruCache;->close()V

    .line 669
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/sea_monster/cache/Util;->deleteContents(Ljava/io/File;)V

    .line 670
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/sea_monster/cache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sea_monster/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->checkNotClosed()V

    .line 634
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->trimToSize()V

    .line 635
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 412
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->checkNotClosed()V

    .line 413
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sea_monster/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .local v3, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    if-nez v3, :cond_1

    .line 449
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 419
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$600(Lcom/sea_monster/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget v1, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_2
    iget v1, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v10, v1, :cond_2

    .line 429
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v3, v10}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v6, v10
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 431
    :catch_0
    move-exception v9

    .line 433
    .local v9, "e":Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :goto_2
    :try_start_3
    iget v1, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v10, v1, :cond_0

    .line 434
    aget-object v1, v6, v10

    if-eqz v1, :cond_0

    .line 435
    aget-object v1, v6, v10

    invoke-static {v1}, Lcom/sea_monster/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 433
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 443
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget v0, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    .line 444
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 445
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 449
    :cond_3
    new-instance v0, Lcom/sea_monster/cache/DiskLruCache$Snapshot;

    invoke-static {v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1200(Lcom/sea_monster/cache/DiskLruCache$Entry;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1000(Lcom/sea_monster/cache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/sea_monster/cache/DiskLruCache$Snapshot;-><init>(Lcom/sea_monster/cache/DiskLruCache;Ljava/lang/String;Lcom/sea_monster/cache/DiskLruCache$Entry;J[Ljava/io/InputStream;[JLcom/sea_monster/cache/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 412
    .end local v3    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v10    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sea_monster/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->checkNotClosed()V

    .line 590
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/cache/DiskLruCache$Entry;

    .line 592
    .local v0, "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$700(Lcom/sea_monster/cache/DiskLruCache$Entry;)Lcom/sea_monster/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 593
    :cond_0
    const/4 v3, 0x0

    .line 613
    :goto_0
    monitor-exit p0

    return v3

    .line 596
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/sea_monster/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 597
    invoke-virtual {v0, v2}, Lcom/sea_monster/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 598
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 599
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    .end local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 601
    .restart local v0    # "entry":Lcom/sea_monster/cache/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1000(Lcom/sea_monster/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J

    .line 602
    invoke-static {v0}, Lcom/sea_monster/cache/DiskLruCache$Entry;->access$1000(Lcom/sea_monster/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sea_monster/cache/DiskLruCache;->redundantOpCount:I

    .line 606
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 607
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-direct {p0}, Lcom/sea_monster/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 610
    iget-object v3, p0, Lcom/sea_monster/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/sea_monster/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/sea_monster/cache/DiskLruCache;->maxSize:J

    .line 505
    iget-object v0, p0, Lcom/sea_monster/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/sea_monster/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sea_monster/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
