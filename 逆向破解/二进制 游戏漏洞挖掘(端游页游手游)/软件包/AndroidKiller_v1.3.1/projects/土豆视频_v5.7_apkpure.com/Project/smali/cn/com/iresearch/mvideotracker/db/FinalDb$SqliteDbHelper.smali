.class Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/iresearch/mvideotracker/db/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteDbHelper"
.end annotation


# instance fields
.field private mDbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

.field final synthetic this$0:Lcn/com/iresearch/mvideotracker/db/FinalDb;


# direct methods
.method public constructor <init>(Lcn/com/iresearch/mvideotracker/db/FinalDb;Landroid/content/Context;Ljava/lang/String;ILcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "dbUpdateListener"    # Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;->this$0:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 525
    iput-object p5, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    .line 526
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 529
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 532
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    invoke-interface {v1, p1, p2, p3}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    .line 537
    const/4 v2, 0x0

    .line 535
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 538
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 539
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 543
    :cond_2
    if-eqz v0, :cond_0

    .line 544
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 540
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method
