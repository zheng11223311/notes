.class public Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;
.super Ljava/lang/Object;
.source "Gifts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeanShowResources"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

.field private time:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->id:Ljava/lang/String;

    .line 339
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->link:Ljava/lang/String;

    .line 340
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->time:Ljava/lang/String;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;

    .prologue
    .line 333
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->time:Ljava/lang/String;

    return-object v0
.end method
