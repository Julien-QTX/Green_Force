<?php

namespace App\Form;

use App\Entity\RecherchePapeterie;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;

class RecherchePapeterieType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('minPrix',IntegerType::class,[
            "required"=>false,
            "label"=>"Prix de : "
        ])
        ->add('maxPrix',IntegerType::class,[
            "required"=>false,
            "label"=>"Prix à: "
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => RecherchePapeterie::class,
        ]);
    }
}