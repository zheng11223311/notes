.class public Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;
.super Ljava/lang/Object;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/iresearch/mvideotracker/db/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbName:Ljava/lang/String;

.field private dbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

.field private dbVersion:I

.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->context:Landroid/content/Context;

    .line 471
    const-string v0, "mAppTracker.db"

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbName:Ljava/lang/String;

    .line 472
    iput v1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbVersion:I

    .line 473
    iput-boolean v1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->debug:Z

    .line 468
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpdateListener()Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbVersion:I

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->debug:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->context:Landroid/content/Context;

    .line 482
    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbName:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setDbUpdateListener(Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;)V
    .locals 0
    .param p1, "dbUpdateListener"    # Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    .prologue
    .line 513
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbUpdateListener:Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    .line 514
    return-void
.end method

.method public setDbVersion(I)V
    .locals 0
    .param p1, "dbVersion"    # I

    .prologue
    .line 497
    iput p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->dbVersion:I

    .line 498
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->debug:Z

    .line 506
    return-void
.end method
