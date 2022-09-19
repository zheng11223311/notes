.class public final Lcom/sea_monster/resource/ResourceHandler$Builder;
.super Ljava/lang/Object;
.source "ResourceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/resource/ResourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lcom/sea_monster/cache/BaseCache;

.field private enableBitmapCache:Z

.field private sizeLimit:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/sea_monster/resource/ResourceHandler;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v1, Lcom/sea_monster/resource/ResourceHandler;->sS:Lcom/sea_monster/resource/ResourceHandler;

    if-eqz v1, :cond_0

    .line 92
    sget-object v0, Lcom/sea_monster/resource/ResourceHandler;->sS:Lcom/sea_monster/resource/ResourceHandler;

    .line 108
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lcom/sea_monster/resource/ResourceHandler;

    iget-object v1, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->type:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sea_monster/resource/ResourceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sea_monster/resource/ResourceHandler$1;)V

    .line 96
    .local v0, "cache":Lcom/sea_monster/resource/ResourceHandler;
    iget-boolean v1, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->enableBitmapCache:Z

    if-eqz v1, :cond_1

    .line 97
    invoke-static {v0}, Lcom/sea_monster/resource/ResourceHandler;->access$100(Lcom/sea_monster/resource/ResourceHandler;)V

    .line 99
    iget v1, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->sizeLimit:I

    if-lez v1, :cond_1

    .line 100
    iget-object v1, v0, Lcom/sea_monster/resource/ResourceHandler;->mBitmapCache:Lcom/sea_monster/cache/BitmapCacheWrapper;

    iget v2, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->sizeLimit:I

    invoke-virtual {v1, v2}, Lcom/sea_monster/cache/BitmapCacheWrapper;->setSizeLimit(I)V

    .line 103
    :cond_1
    invoke-static {v0, p1}, Lcom/sea_monster/resource/ResourceHandler;->access$200(Lcom/sea_monster/resource/ResourceHandler;Landroid/content/Context;)V

    .line 107
    sput-object v0, Lcom/sea_monster/resource/ResourceHandler;->sS:Lcom/sea_monster/resource/ResourceHandler;

    goto :goto_0
.end method

.method public enableBitmapCache()Lcom/sea_monster/resource/ResourceHandler$Builder;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->enableBitmapCache:Z

    .line 113
    return-object p0
.end method

.method public setOutputSizeLimit(I)Lcom/sea_monster/resource/ResourceHandler$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->sizeLimit:I

    .line 87
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/sea_monster/resource/ResourceHandler$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sea_monster/resource/ResourceHandler$Builder;->type:Ljava/lang/String;

    .line 78
    return-object p0
.end method
