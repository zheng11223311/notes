.class public Lcom/youku/vo/PopPage;
.super Ljava/lang/Object;
.source "PopPage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/PopPage$GameInfomation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public area:[Ljava/lang/String;

.field public client_type:Ljava/lang/String;

.field public game_image:Ljava/lang/String;

.field public game_information:Lcom/youku/vo/PopPage$GameInfomation;

.field public pid:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method
