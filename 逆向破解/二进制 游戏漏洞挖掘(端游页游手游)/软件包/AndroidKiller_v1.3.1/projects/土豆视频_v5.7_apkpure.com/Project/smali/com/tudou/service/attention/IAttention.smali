.class public interface abstract Lcom/tudou/service/attention/IAttention;
.super Ljava/lang/Object;
.source "IAttention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/attention/IAttention$Results;,
        Lcom/tudou/service/attention/IAttention$DeleteCallBack;,
        Lcom/tudou/service/attention/IAttention$GetCallBack;,
        Lcom/tudou/service/attention/IAttention$GetListCallBack;,
        Lcom/tudou/service/attention/IAttention$CallBack;
    }
.end annotation


# static fields
.field public static final CANCEL_ATTENTION_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final FAIL_ERROR_LIMIT:Ljava/lang/String; = "LIMIT"

.field public static final FAIL_ERROR_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final FAIL_ERROR_SERVICE:Ljava/lang/String; = "SERVICE"

.field public static final FAIL_ERROR_SQL:Ljava/lang/String; = "SQL"

.field public static final PODCAST_TYPE:I = 0x2

.field public static final SHOW_TYPE:I = 0x1


# virtual methods
.method public abstract addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V
.end method

.method public abstract addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
.end method

.method public abstract addAttention(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addSQLAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V
.end method

.method public abstract cancelAttention(Landroid/content/Context;Ljava/util/ArrayList;ILcom/tudou/service/attention/IAttention$CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/tudou/service/attention/IAttention$CallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteLocalAttention()V
.end method

.method public abstract deleteLocalAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$DeleteCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$DeleteCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteLocalAttention(Ljava/lang/String;)Z
.end method

.method public abstract getAttentionList(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V
.end method

.method public abstract getAttentionListByAtt(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V
.end method

.method public abstract getLoaclAttentionCount()J
.end method

.method public abstract isAttention(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isAttention(Ljava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/attention/IAttention$GetCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isContainAttention(J)Z
.end method

.method public abstract onUserLoginCallBack(Landroid/os/Handler;)V
.end method

.method public abstract onUserQuitCallBack()V
.end method

.method public abstract uploadLocalAttention()V
.end method
