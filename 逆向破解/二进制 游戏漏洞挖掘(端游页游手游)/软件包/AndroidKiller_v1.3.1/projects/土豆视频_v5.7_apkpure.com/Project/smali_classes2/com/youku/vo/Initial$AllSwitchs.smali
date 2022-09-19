.class public Lcom/youku/vo/Initial$AllSwitchs;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllSwitchs"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field public game_switch:I

.field public kuwo:I

.field public push_service_recover_switch:I

.field public record_video:I

.field final synthetic this$0:Lcom/youku/vo/Initial;

.field public tudou_bili:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/Initial;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 59
    iput-object p1, p0, Lcom/youku/vo/Initial$AllSwitchs;->this$0:Lcom/youku/vo/Initial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/youku/vo/Initial$AllSwitchs;->kuwo:I

    .line 70
    iput v0, p0, Lcom/youku/vo/Initial$AllSwitchs;->record_video:I

    return-void
.end method
