.class Lcom/youku/local/MediaDatabase$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/local/MediaDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/local/MediaDatabase;


# direct methods
.method public constructor <init>(Lcom/youku/local/MediaDatabase;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/youku/local/MediaDatabase$DatabaseHelper;->this$0:Lcom/youku/local/MediaDatabase;

    .line 60
    const-string v0, "local_media"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 69
    const-string v0, "CREATE TABLE IF NOT EXISTS media_table (location TEXT PRIMARY KEY NOT NULL, duration INTEGER, progress INTEGER, thumbnail TEXT, title TEXT);"

    .line 74
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public dropMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    const-string v0, "DROP TABLE media_table;"

    .line 65
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/youku/local/MediaDatabase$DatabaseHelper;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    sget-boolean v0, Lcom/youku/local/Scanner;->isUplayerSupported:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/youku/thumbnailer/UThumbnailer;->deleteThumbnailerFolder()V

    .line 85
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v0, 0x1

    .line 89
    if-ge p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/youku/local/MediaDatabase$DatabaseHelper;->dropMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/youku/local/MediaDatabase$DatabaseHelper;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    :cond_0
    return-void
.end method
