.class final Lcom/youku/data/SQLiteManagerTudou$1;
.super Ljava/lang/Thread;
.source "SQLiteManagerTudou.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/data/SQLiteManagerTudou;->readDatabase(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/youku/data/SQLiteManagerTudou$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/youku/data/SQLiteManagerTudou$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1386
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readAllData()V

    .line 1387
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 1388
    return-void
.end method
