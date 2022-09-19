.class public Lcom/sea_monster/resource/ResourceHandler$RequestCallback;
.super Ljava/lang/Object;
.source "ResourceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/resource/ResourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestCallback"
.end annotation


# instance fields
.field resource:Lcom/sea_monster/resource/Resource;

.field result:Z

.field final synthetic this$0:Lcom/sea_monster/resource/ResourceHandler;


# direct methods
.method public constructor <init>(Lcom/sea_monster/resource/ResourceHandler;Lcom/sea_monster/resource/Resource;Z)V
    .locals 0
    .param p2, "resource"    # Lcom/sea_monster/resource/Resource;
    .param p3, "result"    # Z

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->this$0:Lcom/sea_monster/resource/ResourceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->resource:Lcom/sea_monster/resource/Resource;

    .line 290
    iput-boolean p3, p0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->result:Z

    .line 291
    return-void
.end method


# virtual methods
.method public getResource()Lcom/sea_monster/resource/Resource;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->resource:Lcom/sea_monster/resource/Resource;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/sea_monster/resource/ResourceHandler$RequestCallback;->result:Z

    return v0
.end method
