.class public Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
.super Ljava/lang/Object;
.source "Gifts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeanRoomGift"
.end annotation


# instance fields
.field private Id:Ljava/lang/String;

.field private Lucky:Z

.field private MultiConfKey:Ljava/lang/String;

.field private MultipleSelect:Z

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "lucky"    # Z
    .param p4, "multi"    # Z
    .param p5, "multiConfKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 297
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->Id:Ljava/lang/String;

    .line 280
    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->Lucky:Z

    .line 281
    iput-boolean v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->MultipleSelect:Z

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->MultiConfKey:Ljava/lang/String;

    .line 298
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->Id:Ljava/lang/String;

    .line 299
    iput-boolean p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->Lucky:Z

    .line 300
    iput-boolean p4, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->MultipleSelect:Z

    .line 301
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->MultiConfKey:Ljava/lang/String;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;

    .prologue
    .line 278
    invoke-direct/range {p0 .. p5}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiConfKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->MultiConfKey:Ljava/lang/String;

    return-object v0
.end method

.method public isLucky()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->Lucky:Z

    return v0
.end method

.method public isMultipleSelect()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;->MultipleSelect:Z

    return v0
.end method
