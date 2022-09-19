.class public Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
.super Ljava/lang/Object;
.source "Gifts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeanCategoryGift"
.end annotation


# instance fields
.field public giftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "i"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->name:Ljava/lang/String;

    .line 325
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->id:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->giftList:Ljava/util/List;

    .line 327
    return-void
.end method
