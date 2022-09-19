.class public Lcom/sea_monster/dao/async/AsyncDaoException;
.super Lcom/sea_monster/dao/DaoException;
.source "AsyncDaoException.java"


# static fields
.field private static final serialVersionUID:J = 0x517e182e78643b2eL


# instance fields
.field private final failedOperation:Lcom/sea_monster/dao/async/AsyncOperation;


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/async/AsyncOperation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failedOperation"    # Lcom/sea_monster/dao/async/AsyncOperation;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    iput-object p1, p0, Lcom/sea_monster/dao/async/AsyncDaoException;->failedOperation:Lcom/sea_monster/dao/async/AsyncOperation;

    .line 35
    return-void
.end method


# virtual methods
.method public getFailedOperation()Lcom/sea_monster/dao/async/AsyncOperation;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sea_monster/dao/async/AsyncDaoException;->failedOperation:Lcom/sea_monster/dao/async/AsyncOperation;

    return-object v0
.end method
