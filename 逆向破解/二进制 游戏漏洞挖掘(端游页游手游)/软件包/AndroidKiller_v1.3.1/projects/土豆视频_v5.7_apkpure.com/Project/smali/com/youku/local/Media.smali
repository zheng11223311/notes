.class public Lcom/youku/local/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/youku/local/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOLDER_BLACKLIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "MediaItem"

.field public static final VIDEO_EXTENSIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mDefaultThumbnailID:I


# instance fields
.field private mCollatorChina:Ljava/text/Collator;

.field private mCollatorUS:Ljava/text/Collator;

.field private mDuration:J

.field private final mLocation:Ljava/lang/String;

.field private mProgress:J

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 27
    sget v8, Lcom/youku/android/player/R$drawable;->scan_default:I

    sput v8, Lcom/youku/local/Media;->mDefaultThumbnailID:I

    .line 31
    sget-boolean v8, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v8, :cond_0

    .line 32
    const/16 v8, 0x8

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, ".3gp"

    aput-object v8, v6, v10

    const-string v8, ".avi"

    aput-object v8, v6, v11

    const-string v8, ".f4v"

    aput-object v8, v6, v12

    const-string v8, ".flv"

    aput-object v8, v6, v13

    const-string v8, ".mkv"

    aput-object v8, v6, v14

    const/4 v8, 0x5

    const-string v9, ".mov"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, ".mp4"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, ".rmvb"

    aput-object v9, v6, v8

    .line 34
    .local v6, "uplayerExtensions":[Ljava/lang/String;
    move-object v7, v6

    .line 39
    .end local v6    # "uplayerExtensions":[Ljava/lang/String;
    .local v7, "video_extensions":[Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    sput-object v8, Lcom/youku/local/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    .line 40
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 41
    .local v3, "item":Ljava/lang/String;
    sget-object v8, Lcom/youku/local/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v7    # "video_extensions":[Ljava/lang/String;
    :cond_0
    new-array v5, v12, [Ljava/lang/String;

    const-string v8, ".3gp"

    aput-object v8, v5, v10

    const-string v8, ".mp4"

    aput-object v8, v5, v11

    .line 37
    .local v5, "systemPlayerExtensions":[Ljava/lang/String;
    move-object v7, v5

    .restart local v7    # "video_extensions":[Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v5    # "systemPlayerExtensions":[Ljava/lang/String;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    const/16 v8, 0xc

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "/alarms"

    aput-object v8, v1, v10

    const-string v8, "/notifications"

    aput-object v8, v1, v11

    const-string v8, "/ringtones"

    aput-object v8, v1, v12

    const-string v8, "/media/alarms"

    aput-object v8, v1, v13

    const-string v8, "/media/notifications"

    aput-object v8, v1, v14

    const/4 v8, 0x5

    const-string v9, "/media/ringtones"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "/media/audio/alarms"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "/media/audio/notifications"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "/media/audio/ringtones"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "/Android/data/"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "/log"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "/tudou/offlinedata"

    aput-object v9, v1, v8

    .line 47
    .local v1, "folder_blacklist":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    sput-object v8, Lcom/youku/local/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    .line 48
    move-object v0, v1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 49
    .restart local v3    # "item":Ljava/lang/String;
    sget-object v8, Lcom/youku/local/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 51
    .end local v3    # "item":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "length"    # J
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v0, p0, Lcom/youku/local/Media;->mDuration:J

    .line 59
    iput-wide v0, p0, Lcom/youku/local/Media;->mProgress:J

    .line 61
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/local/Media;->mCollatorChina:Ljava/text/Collator;

    .line 62
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/local/Media;->mCollatorUS:Ljava/text/Collator;

    .line 113
    iput-object p2, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    .line 114
    iput-wide p3, p0, Lcom/youku/local/Media;->mDuration:J

    .line 115
    iput-wide p5, p0, Lcom/youku/local/Media;->mProgress:J

    .line 116
    iput-object p8, p0, Lcom/youku/local/Media;->mThumbnailPath:Ljava/lang/String;

    .line 117
    iput-object p7, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "addToDb"    # Ljava/lang/Boolean;

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v4, p0, Lcom/youku/local/Media;->mDuration:J

    .line 59
    iput-wide v4, p0, Lcom/youku/local/Media;->mProgress:J

    .line 61
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/local/Media;->mCollatorChina:Ljava/text/Collator;

    .line 62
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/local/Media;->mCollatorUS:Ljava/text/Collator;

    .line 75
    iput-object p2, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    .line 76
    const-string v3, "."

    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "end":I
    if-gtz v1, :cond_1

    .end local p3    # "fileName":Ljava/lang/String;
    :goto_0
    iput-object p3, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    .line 78
    sget-boolean v3, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/uplayer/UMediaPlayer;->getFileDuration(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/youku/local/Media;->mDuration:J

    .line 80
    iget-object v3, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/thumbnailer/UThumbnailer;->getThumailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "path":Ljava/lang/String;
    iput-object v2, p0, Lcom/youku/local/Media;->mThumbnailPath:Ljava/lang/String;

    .line 85
    .end local v2    # "path":Ljava/lang/String;
    :goto_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-static {p1}, Lcom/youku/local/MediaDatabase;->getInstance(Landroid/content/Context;)Lcom/youku/local/MediaDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Lcom/youku/local/MediaDatabase;
    invoke-virtual {v0, p0}, Lcom/youku/local/MediaDatabase;->addMedia(Lcom/youku/local/Media;)V

    .line 89
    .end local v0    # "db":Lcom/youku/local/MediaDatabase;
    :cond_0
    return-void

    .line 77
    .restart local p3    # "fileName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 83
    .end local p3    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/local/Media;->getDurationFromMediaStore(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v0, p0, Lcom/youku/local/Media;->mDuration:J

    .line 59
    iput-wide v0, p0, Lcom/youku/local/Media;->mProgress:J

    .line 61
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/local/Media;->mCollatorChina:Ljava/text/Collator;

    .line 62
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/local/Media;->mCollatorUS:Ljava/text/Collator;

    .line 108
    iput-object p1, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private getDurationFromMediaStore(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "duration"

    aput-object v3, v2, v7

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/youku/local/Media;->mDuration:J

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/youku/local/Media;)I
    .locals 3
    .param p1, "another"    # Lcom/youku/local/Media;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-eq v0, v2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/youku/local/Media;->mCollatorChina:Ljava/text/Collator;

    iget-object v1, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/local/Media;->mCollatorChina:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/youku/local/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/local/Media;->mCollatorUS:Ljava/text/Collator;

    iget-object v1, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/local/Media;->mCollatorUS:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/youku/local/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/youku/local/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/local/Media;->compareTo(Lcom/youku/local/Media;)I

    move-result v0

    return v0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    sget-boolean v1, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/thumbnailer/UThumbnailer;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 164
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/local/Media;->mDefaultThumbnailID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/local/Media;->mDefaultThumbnailID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/youku/local/Media;->mDuration:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/local/Media;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/youku/local/Media;->mProgress:J

    return-wide v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/youku/local/Media;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/youku/local/Media;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isThumbnailExist()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/youku/local/Media;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youku/local/Media;->mThumbnailPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/youku/local/Media;->mDuration:J

    .line 148
    return-void
.end method

.method public setProgress(J)V
    .locals 1
    .param p1, "progress"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/youku/local/Media;->mProgress:J

    .line 156
    return-void
.end method
