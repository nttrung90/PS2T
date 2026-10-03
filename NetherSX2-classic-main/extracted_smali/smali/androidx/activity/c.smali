.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/b$b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/c;->a:I

    iput-object p1, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    iget v0, p0, Landroidx/activity/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/y;->Y()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/o;

    sget v1, Landroidx/fragment/app/o;->u:I

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object v1

    invoke-static {v1}, Landroidx/fragment/app/o;->w(Landroidx/fragment/app/y;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/o;->q:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/h$b;->ON_STOP:Landroidx/lifecycle/h$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/h$b;)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 6
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/ComponentActivity$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/activity/result/ActivityResultRegistry;->c:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/activity/result/ActivityResultRegistry;->c:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 14
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/activity/result/ActivityResultRegistry;->e:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    iget-object v2, v0, Landroidx/activity/result/ActivityResultRegistry;->h:Landroid/os/Bundle;

    .line 17
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry;->a:Ljava/util/Random;

    const-string v2, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v1

    .line 20
    :goto_0
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/x;

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/x;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
