.class public abstract Lcom/sea_monster/dao/AbstractDaoMaster;
.super Ljava/lang/Object;
.source "AbstractDaoMaster.java"


# instance fields
.field protected final daoConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sea_monster/dao/AbstractDao",
            "<**>;>;",
            "Lcom/sea_monster/dao/internal/DaoConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected final db:Landroid/database/sqlite/SQLiteDatabase;

.field protected final schemaVersion:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "schemaVersion"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    iput p2, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->schemaVersion:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getSchemaVersion()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->schemaVersion:I

    return v0
.end method

.method public abstract newSession()Lcom/sea_monster/dao/AbstractDaoSession;
.end method

.method public abstract newSession(Lcom/sea_monster/dao/identityscope/IdentityScopeType;)Lcom/sea_monster/dao/AbstractDaoSession;
.end method

.method protected registerDaoClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sea_monster/dao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sea_monster/dao/AbstractDao<**>;>;"
    new-instance v0, Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Lcom/sea_monster/dao/internal/DaoConfig;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V

    .line 46
    .local v0, "daoConfig":Lcom/sea_monster/dao/internal/DaoConfig;
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
