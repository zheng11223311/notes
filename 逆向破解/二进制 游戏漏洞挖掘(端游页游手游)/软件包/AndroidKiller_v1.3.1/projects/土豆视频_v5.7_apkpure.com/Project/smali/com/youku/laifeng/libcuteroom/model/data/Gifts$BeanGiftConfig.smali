.class public Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;
.super Ljava/lang/Object;
.source "Gifts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeanGiftConfig"
.end annotation


# instance fields
.field Name:Ljava/lang/String;

.field Num:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->Num:Ljava/lang/String;

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->Name:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->Num:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->Name:Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;->Num:Ljava/lang/String;

    return-object v0
.end method
